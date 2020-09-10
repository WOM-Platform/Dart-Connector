import 'dart:convert';

import 'package:dart_wom_connector/src/core/error/failures.dart';
import 'package:dart_wom_connector/src/instrument/data/data_sources/instruement_remote_data_sources.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/request_wom_creation.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/request_wom_creation_response.dart';
import 'package:dart_wom_connector/src/instrument/domain/repositories/instrument_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:encrypt/encrypt.dart';

class InstrumentRepositoryImpl extends InstrumentRepository {
  InstrumentRemoteDataSources instrumentRemoteDataSources;
  Encrypter encrypter;

  InstrumentRepositoryImpl(
      this.instrumentRemoteDataSources,
      String privateKeyString,
      String publicKeyString,
      String sourceId,
      String domain)
      : super(privateKeyString, publicKeyString, sourceId, domain) {
    final rsaKeyParser = RSAKeyParser();
    final publicKey = rsaKeyParser.parse(publicKeyString);
    final privateKey = rsaKeyParser.parse(privateKeyString);
    encrypter = Encrypter(RSA(publicKey: publicKey, privateKey: privateKey));
  }

  @override
  Future<Either<Failure, RequestWomCreationResponse>> requestWomCreation(
      RequestWomCreation requestWomCreation) async {
    try {
/*      final payloadMap = <String, dynamic>{
        'SourceId': sourceId,
        'Nonce': nonce,
        'Vouchers': [
          <String, dynamic>{
            'Latitude': 43.7292635,
            'Longitude': 12.6129107,
            'Aim': 'E',
            'Count': 30,
            'Timestamp': DateTime.now().toIso8601String(),
          },
        ],
      };*/

      print('WOM REQUEST ------------- ');
      final payloadMap = requestWomCreation.toMap();
      print(payloadMap);

      //encode map to json string
      final payloadMapEncoded = json.encode(payloadMap);

/*      final parser = RSAKeyParser();
      final publicKey = parser.parse(registryPublicKey) as RSAPublicKey;
      final privKey =
          await parseKeyFromFile<RSAPrivateKey>('/private/codymaze.pem');

      final encrypter =
      Encrypter(RSA(publicKey: publicKey, privateKey: privKey));*/

      final encrypted = encrypter.encrypt(payloadMapEncoded);

      final map = <String, dynamic>{
        'SourceId': requestWomCreation.sourceId,
        'Nonce': requestWomCreation.nonce,
        'Payload': encrypted.base64,
      };

      final responseBody = await instrumentRemoteDataSources.requestWomCreation(
          'http://$domain/api/v1/voucher/create', map);

      //decode response body into json
      final jsonResponse = json.decode(responseBody);
      final encryptedPayload = jsonResponse['payload'] as String;
      final decryptedPayload = encrypter.decrypt64(encryptedPayload);

      //decode decrypted paylod into json
      final jsonDecrypted =
          json.decode(decryptedPayload) as Map<String, dynamic>;
      print(jsonDecrypted.toString());
      return right(RequestWomCreationResponse.fromMap(jsonDecrypted));
    } catch (ex) {
      print(ex);
      return left(UnknownFailure(ex.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> verifyWomCreation(
      RequestWomCreationResponse response) async {
    print('WOM VERIFY ------------- ');
    final payloadMap = <String, String>{
      'Otc': response.otc,
    };

    print(payloadMap);

    try {
      final payloadMapEncoded = json.encode(payloadMap);

      /*  final parser = RSAKeyParser();
      final publicKey = parser.parse(registryPublicKey) as RSAPublicKey;
      final privKey =
          await parseKeyFromFile<RSAPrivateKey>('/private/codymaze.pem');

      final encrypter =
      Encrypter(RSA(publicKey: publicKey, privateKey: privKey));*/

      final payloadEncrypted = encrypter.encrypt(payloadMapEncoded);

      final map = <String, dynamic>{
        'Payload': payloadEncrypted.base64,
      };

      final result = await instrumentRemoteDataSources.verifyWomCreation(
          'http://$domain/api/v1/voucher/verify', map);
      return right(result);
    } catch (ex) {
      print(ex.toString());
      return left(UnknownFailure(ex.toString()));
    }
  }
}
