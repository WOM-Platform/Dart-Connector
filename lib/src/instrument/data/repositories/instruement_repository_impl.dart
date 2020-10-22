import 'dart:convert';

import 'package:dart_wom_connector/src/core/utils/utils.dart';
import 'package:dart_wom_connector/src/instrument/data/data_sources/instruement_remote_data_sources.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/request_wom_creation.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/request_wom_creation_response.dart';
import 'package:dart_wom_connector/src/instrument/domain/repositories/instrument_repository.dart';
import 'package:encrypt/encrypt.dart';

class InstrumentRepositoryImpl extends InstrumentRepository {
  InstrumentRemoteDataSources instrumentRemoteDataSources;
  Encrypter encrypter;
  final rsaKeyParser = RSAKeyParser();
  InstrumentRepositoryImpl(
      this.instrumentRemoteDataSources,
      String privateKeyString,
      String publicKeyString,
      String sourceId,
      String domain)
      : super(privateKeyString, publicKeyString, sourceId, domain) {
    final publicKey = rsaKeyParser.parse(publicKeyString);
    final privateKey = rsaKeyParser.parse(privateKeyString);
    encrypter = Encrypter(RSA(publicKey: publicKey, privateKey: privateKey));
  }

  @override
  Future<RequestWomCreationResponse> requestWomCreation(
      RequestWomCreation requestWomCreation) async {
    try {
      final payloadMap = requestWomCreation.toMap();

      //encode map to json string
      final payloadMapEncoded = json.encode(payloadMap);

      final encrypted = Utils.encryptLongInput(
          encrypter,
          utf8.encode(payloadMapEncoded),
          Utils.outputBlockSize(
              rsaKeyParser.parse(publicKey).modulus.bitLength, true));

      final map = <String, dynamic>{
        'SourceId': requestWomCreation.sourceId,
        'Nonce': requestWomCreation.nonce,
        'Payload': encrypted,
      };

      final responseBody = await instrumentRemoteDataSources.requestWomCreation(
          'http://$domain/api/v1/voucher/create', map);

      //decode response body into json
      final jsonResponse = json.decode(responseBody);
      final encryptedPayload = jsonResponse['payload'] as String;

      final base64Decoder = Base64Decoder();
      final decryptedPayload = Utils.decryptLongInput(
          encrypter, base64Decoder.convert(encryptedPayload), 501);

      //decode decrypted paylod into json
      final jsonDecrypted =
          json.decode(decryptedPayload) as Map<String, dynamic>;
      return RequestWomCreationResponse.fromMap(jsonDecrypted);
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future<bool> verifyWomCreation(RequestWomCreationResponse response) async {
    final payloadMap = <String, String>{
      'Otc': response.otc,
    };

    try {
      final payloadMapEncoded = json.encode(payloadMap);

      final payloadEncrypted = Utils.encryptLongInput(
          encrypter,
          utf8.encode(payloadMapEncoded),
          Utils.outputBlockSize(
              rsaKeyParser.parse(publicKey).modulus.bitLength, true));

      final map = <String, dynamic>{
        'Payload': payloadEncrypted,
      };

      final result = await instrumentRemoteDataSources.verifyWomCreation(
          'http://$domain/api/v1/voucher/verify', map);
      return result;
    } catch (ex) {
      rethrow;
    }
  }
}
