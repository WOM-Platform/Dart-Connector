import 'dart:convert';

import 'package:dart_wom_connector/src/core/domain/entities/transaction_type.dart';
import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:dart_wom_connector/src/core/error/exceptions.dart';
import 'package:dart_wom_connector/src/core/error/failures.dart';
import 'package:dart_wom_connector/src/core/utils/utils.dart';
import 'package:dart_wom_connector/src/pocket/data/data_sources/pocket_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/info_pay_response.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/response_redeem.dart';
import 'package:dartz/dartz.dart';
import 'package:encrypt/encrypt.dart';

abstract class PocketRepository {
  Future<Either<Failure, ResponseRedeem>> redeemVouchers(
      String otc, String password);
  Future<Either<Failure, InfoPayResponse>> requestInfoPay(
      String otc, String password);
  Future<Either<Failure, String>> pay(String otc, String password,
      InfoPayResponse infoPay, List<Voucher> vouchers);
}

class PocketRepositoryImpl extends PocketRepository {
  final String registryKey;
  final PocketRemoteDataSourcesImpl pocketRemoteDataSourcesImpl;
  Encrypter encrypter;

  PocketRepositoryImpl(this.registryKey, this.pocketRemoteDataSourcesImpl) {
    final rsaKeyParser = RSAKeyParser();
    final publicKey = rsaKeyParser.parse(registryKey);
    encrypter = Encrypter(RSA(publicKey: publicKey, privateKey: null));
  }

  @override
  Future<Either<Failure, ResponseRedeem>> redeemVouchers(
      String otc, String password) async {
    try {
      final jsonDecrypted = await performRequestAndDecrypt(
          TransactionType.VOUCHERS, otc, password);
      final responseRedeem = ResponseRedeem.fromJson(jsonDecrypted);
      return right(responseRedeem);
    } on ServerException catch (ex) {
      print(ex.error);
      return left(UnknownFailure(ex.error));
    } catch (ex) {
      print(ex);
      return left(UnknownFailure(ex.toString()));
    }
  }

  @override
  Future<Either<Failure, InfoPayResponse>> requestInfoPay(
      String otc, String password) async {
    try {
      final jsonDecrypted = await performRequestAndDecrypt(
          TransactionType.PAYMENT, otc, password);
      final responseRedeem = InfoPayResponse.fromMap(jsonDecrypted);
      return right(responseRedeem);
    } on ServerException catch (ex) {
      print(ex.error);
      return left(UnknownFailure(ex.error));
    } catch (ex) {
      print(ex);
      return left(UnknownFailure(ex.toString()));
    }
  }

  Future<Map<String, dynamic>> performRequestAndDecrypt(
      TransactionType type, String otc, String password) async {
    print('performRequestAndDecryptPayload');

    //generate temporary key from this transaction
    final key = Utils.generateAsBase64String(32);

    //create json map with parameters
    final map = <String, String>{
      'otc': otc,
      'password': password,
      'sessionKey': key,
    };

    //encode map to json string
    final mapEncoded = json.encode(map);

    //encrypt otc map with public_key
    final otcEncrypted = await encrypter.encrypt(mapEncoded);

    //create payload with endrypted otc json
    final payload = <String, String>{'payload': otcEncrypted.base64};

    Map<String, dynamic> responseMap;
    if (type == TransactionType.VOUCHERS) {
      print('redeemWoms');
      responseMap = await pocketRemoteDataSourcesImpl.redeemVouchers(payload);
    } else {
      print('payment');
      responseMap = await pocketRemoteDataSourcesImpl.getInfoPayments(payload);
    }

    //get encrypted payload from json
    final encryptedPayload = responseMap['payload'];

    //decrypt payload with AES CBC
    final decryptedPayload = Utils.decryptAES(encryptedPayload, key);

    //decode decrypted paylod into json
    final jsonDecrypted = json.decode(decryptedPayload) as Map<String, dynamic>;
    print(jsonDecrypted.toString());

    return jsonDecrypted;
  }

  Future<Either<Failure, String>> pay(String otc, String password,
      InfoPayResponse infoPay, List<Voucher> vouchers) async {
    print('pay');
    try {
      //generate temporary key from this transaction
      final key = Utils.generateAsBase64String(32);

      //create json map with parameters
      final map = <String, dynamic>{
        'otc': otc,
        'password': password,
        'sessionKey': key,
        'vouchers': vouchers
            .map((v) => <String, String>{'id': v.id, 'secret': v.secret})
            .toList(),
      };

      //encode map to json string
      final mapEncoded = json.encode(map);

      //encrypt otc map with public_key
      final otcEncrypted = encrypter.encrypt(mapEncoded);

      //create payload with endrypted otc json
      final payload = <String, String>{'payload': otcEncrypted.base64};

      //get response body from HTTP POST method
      final jsonResponse =
          await pocketRemoteDataSourcesImpl.confirmPayments(payload);

      //get encrypted payload from json
      final encryptedPayload = jsonResponse['payload'];

      //decrypt payload with AES CBC
      final decryptedPayload = Utils.decryptAES(encryptedPayload, key);

      //decode response body into json
      final jsonDecryptedPayload =
          json.decode(decryptedPayload) as Map<String, dynamic>;

      return right(jsonDecryptedPayload['ackUrl'] as String);
    } catch (ex) {
      print(ex);
      return left(UnknownFailure(ex.toString()));
    }
  }
}
