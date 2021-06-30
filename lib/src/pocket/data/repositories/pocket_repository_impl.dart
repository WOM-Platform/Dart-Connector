import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_wom_connector/src/core/domain/entities/transaction_type.dart';
import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:dart_wom_connector/src/core/utils/utils.dart';
import 'package:dart_wom_connector/src/pocket/data/data_sources/pocket_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/info_pay_response.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/response_redeem.dart';
import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/asymmetric/api.dart';

abstract class PocketRepository {
  Future<ResponseRedeem> redeemVouchers(String? otc, String? password);
  Future<InfoPayResponse> requestInfoPay(String? otc, String? password);
  Future<String?> pay(String? otc, String? password, InfoPayResponse infoPay,
      List<Voucher> vouchers);
}

class PocketRepositoryImpl extends PocketRepository {
  final String registryKey;
  final PocketRemoteDataSourcesImpl pocketRemoteDataSourcesImpl;
  Encrypter? encrypter;
  final rsaKeyParser = RSAKeyParser();
  PocketRepositoryImpl(this.registryKey, this.pocketRemoteDataSourcesImpl) {
    final publicKey = rsaKeyParser.parse(registryKey);
    encrypter =
        Encrypter(RSA(publicKey: publicKey as RSAPublicKey, privateKey: null));
  }

  @override
  Future<ResponseRedeem> redeemVouchers(String? otc, String? password) async {
    final jsonDecrypted = await (performRequestAndDecrypt(
        TransactionType.VOUCHERS, otc, password));
    final responseRedeem = ResponseRedeem.fromJson(jsonDecrypted);
    return responseRedeem;
  }

  @override
  Future<InfoPayResponse> requestInfoPay(String? otc, String? password) async {
    try {
      final jsonDecrypted = await performRequestAndDecrypt(
          TransactionType.PAYMENT, otc, password);
      final responseRedeem = InfoPayResponse.fromMap(jsonDecrypted);
      return responseRedeem;
    } catch (ex) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> performRequestAndDecrypt(
      TransactionType type, String? otc, String? password) async {
    //generate temporary key from this transaction
    final key = Utils.generateAsBase64String(32);

    //create json map with parameters
    final map = <String, String?>{
      'otc': otc,
      'password': password,
      'sessionKey': key,
    };

    //encode map to json string
    final mapEncoded = json.encode(map);

    //encrypt otc map with public_key
    final otcEncrypted = await Utils.encryptLongInput(
        encrypter,
        Uint8List.fromList(utf8.encode(mapEncoded)),
        Utils.outputBlockSize(
            rsaKeyParser.parse(registryKey).modulus!.bitLength, true));

    //create payload with endrypted otc json
    final payload = <String, String>{'payload': otcEncrypted};

    Map<String, dynamic>? responseMap;
    if (type == TransactionType.VOUCHERS) {
      responseMap = await pocketRemoteDataSourcesImpl.redeemVouchers(payload);
    } else {
      responseMap = await pocketRemoteDataSourcesImpl.getInfoPayments(payload);
    }

    //get encrypted payload from json
    final encryptedPayload = responseMap!['payload'];

    //decrypt payload with AES CBC
    final decryptedPayload = Utils.decryptAES(encryptedPayload, key);

    //decode decrypted paylod into json
    final jsonDecrypted = json.decode(decryptedPayload);

    return jsonDecrypted;
  }

  @override
  Future<String?> pay(String? otc, String? password, InfoPayResponse infoPay,
      List<Voucher> vouchers) async {
    try {
      //generate temporary key from this transaction
      final key = Utils.generateAsBase64String(32);

      //create json map with parameters
      final map = <String, dynamic>{
        'otc': otc,
        'password': password,
        'sessionKey': key,
        'vouchers': vouchers
            .map((v) => <String, String?>{'id': v.id, 'secret': v.secret})
            .toList(),
      };

      //encode map to json string
      final mapEncoded = json.encode(map);

      //encrypt otc map with public_key
      final otcEncrypted = await Utils.encryptLongInput(
          encrypter,
          utf8.encode(mapEncoded) as Uint8List,
          Utils.outputBlockSize(
              rsaKeyParser.parse(registryKey).modulus!.bitLength, true));

      //create payload with endrypted otc json
      final payload = <String, String>{'payload': otcEncrypted};

      //get response body from HTTP POST method
      final jsonResponse =
          await (pocketRemoteDataSourcesImpl.confirmPayments(payload));

      //get encrypted payload from json
      final encryptedPayload = jsonResponse['payload'];

      //decrypt payload with AES CBC
      final decryptedPayload = Utils.decryptAES(encryptedPayload, key);

      //decode response body into json
      final jsonDecryptedPayload =
          json.decode(decryptedPayload) as Map<String, dynamic>;

      return jsonDecryptedPayload['ackUrl'] as String?;
    } catch (ex) {
      rethrow;
    }
  }
}
