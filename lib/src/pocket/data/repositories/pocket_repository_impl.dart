import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:dart_wom_connector/src/core/domain/entities/transaction_type.dart';
import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:dart_wom_connector/src/core/utils/utils.dart';
import 'package:dart_wom_connector/src/pocket/data/data_sources/pocket_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/create_migration_response.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/migration_info_response.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/offer.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/payment_info_response.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/response_redeem.dart';
import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/asymmetric/api.dart';

abstract class PocketRepository {
  Future<ResponseRedeem> redeemVouchers(String? otc, String? password,
      {double? lat, double? long});

  Future<PaymentInfoResponse> requestInfoPay(String? otc, String? password);

  Future<String?> pay(String? otc, String? password,
      PaymentInfoResponse infoPay, List<Voucher> vouchers);

  Future<CreateMigrationResponse> createNewMigration(
      List<int> bytes, String password);

  Future<CreateMigrationResponse> createNewMigrationV2(
      List<Voucher> vouchers, String password);

  Future<MigrationInfoResponse> getInfoAboutMigration(
      String guid, String password);

  Future<Uint8List> retrieveMigrationPayload(String guid, String password);

  Future<void> completeMigration(String guid, String password);

  Future<List<OfferPOS>> getOffers({
    required double latitude,
    required double longitude,
  });

  Future<OfferPagination> getVirtualPos(int page, {int pageSize = 10});

  Future<List<OfferPOS>> getOffersByBox({
    required double lly,
    required double llx,
    required double ury,
    required double urx,
  });
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
  Future<ResponseRedeem> redeemVouchers(String? otc, String? password,
      {double? lat, double? long}) async {
    final jsonDecrypted = await (performRequestAndDecrypt(
      TransactionType.VOUCHERS,
      otc,
      password,
      lat: lat,
      long: long,
    ));
    final responseRedeem = ResponseRedeem.fromJson(jsonDecrypted);
    return responseRedeem;
  }

  @override
  Future<PaymentInfoResponse> requestInfoPay(
      String? otc, String? password) async {
    try {
      final jsonDecrypted = await performRequestAndDecrypt(
          TransactionType.PAYMENT, otc, password);
      final responseRedeem = PaymentInfoResponse.fromJson(jsonDecrypted);
      return responseRedeem;
    } catch (ex) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> performRequestAndDecrypt(
      TransactionType type, String? otc, String? password,
      {double? lat, double? long}) async {
    //generate temporary key from this transaction
    final key = CoreUtils.generateAsBase64String(32);

    //create json map with parameters
    final map = <String, dynamic>{
      'otc': otc,
      'password': password,
      'sessionKey': key,
    };

    if (lat != null && long != null) {
      map['redeemLocation'] = <String, dynamic>{
        'latitude': lat,
        'longitude': long,
      };
    }

    //encode map to json string
    final mapEncoded = json.encode(map);

    //encrypt otc map with public_key
    final otcEncrypted = CoreUtils.encryptLongInput(
        encrypter,
        Uint8List.fromList(utf8.encode(mapEncoded)),
        CoreUtils.outputBlockSize(
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
    final decryptedPayload = CoreUtils.decryptAES(encryptedPayload, key);

    //decode decrypted paylod into json
    final jsonDecrypted = json.decode(decryptedPayload);

    return jsonDecrypted;
  }

  @override
  Future<String?> pay(String? otc, String? password,
      PaymentInfoResponse infoPay, List<Voucher> vouchers) async {
    try {
      //generate temporary key from this transaction
      final key = CoreUtils.generateAsBase64String(32);

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
      final otcEncrypted = CoreUtils.encryptLongInput(
          encrypter,
          utf8.encode(mapEncoded) as Uint8List,
          CoreUtils.outputBlockSize(
              rsaKeyParser.parse(registryKey).modulus!.bitLength, true));

      //create payload with endrypted otc json
      final payload = <String, String>{'payload': otcEncrypted};

      //get response body from HTTP POST method
      final jsonResponse =
          await (pocketRemoteDataSourcesImpl.confirmPayments(payload));

      //get encrypted payload from json
      final encryptedPayload = jsonResponse['payload'];

      //decrypt payload with AES CBC
      final decryptedPayload = CoreUtils.decryptAES(encryptedPayload, key);

      //decode response body into json
      final jsonDecryptedPayload =
          json.decode(decryptedPayload) as Map<String, dynamic>;

      return jsonDecryptedPayload['ackUrl'] as String?;
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future<CreateMigrationResponse> createNewMigration(
      List<int> bytes, String password) async {
    final data =
        await pocketRemoteDataSourcesImpl.createNewMigration(bytes, password);
    return CreateMigrationResponse.fromJson(data);
  }

  @override
  Future<CreateMigrationResponse> createNewMigrationV2(
      List<Voucher> vouchers, String password) async {
    if (vouchers.isEmpty) {
      print('woms empty');
      //TODO
      // throw Exception('Woms table is Empty');
    }
    final jsonString = jsonEncode(vouchers.map((e) => e.toJson()).toList());
    final key = _getRandomString(28);
    final bytes = _encryptWithAes(jsonString, '$key$password');

    final data =
        await pocketRemoteDataSourcesImpl.createNewMigration(bytes, password);
    return CreateMigrationResponse.fromJson(data);
  }

  @override
  Future<MigrationInfoResponse> getInfoAboutMigration(
      String guid, String password) async {
    final data =
        await pocketRemoteDataSourcesImpl.getInfoAboutMigration(guid, password);
    return MigrationInfoResponse.fromJson(data);
  }

  @override
  Future<Uint8List> retrieveMigrationPayload(
      String guid, String password) async {
    final data = await pocketRemoteDataSourcesImpl.retrieveMigrationPayload(
        guid, password);
    return data;
  }

  List<int> _encryptWithAes(String text, String k) {
    final key = Key.fromUtf8(k);
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key));

    final encrypted = encrypter.encrypt(text, iv: iv);
    // final decrypted = encrypter.decrypt(encrypted, iv: iv);

    // print(decrypted);
    // print(encrypted.base64);
    return encrypted.bytes;
  }

  String _getRandomString(int length) {
    final _rnd = Random();
    return String.fromCharCodes(Iterable.generate(
        length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  }

  @override
  Future<void> completeMigration(String guid, String password) async {
    await pocketRemoteDataSourcesImpl.completeMigration(guid, password);
  }

  @override
  Future<List<OfferPOS>> getOffers({
    required double latitude,
    required double longitude,
  }) {
    return pocketRemoteDataSourcesImpl.getOffers(
      latitude: latitude,
      longitude: longitude,
    );
  }

  @override
  Future<List<OfferPOS>> getOffersByBox({
    required double lly,
    required double llx,
    required double ury,
    required double urx,
  }) async {
    return pocketRemoteDataSourcesImpl.getOffersByBox(
      lly: lly,
      llx: llx,
      ury: ury,
      urx: urx,
    );
  }

  @override
  Future<OfferPagination> getVirtualPos(int page, {int pageSize = 10}) {
    return pocketRemoteDataSourcesImpl.getVirtualPos(page, pageSize: pageSize);
  }
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
