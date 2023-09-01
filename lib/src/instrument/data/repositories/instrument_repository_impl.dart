import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_wom_connector/src/core/utils/utils.dart';
import 'package:dart_wom_connector/src/instrument/data/data_sources/instrument_remote_data_sources.dart';
import 'package:dart_wom_connector/src/instrument/data/dto/wom_creation_response.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/request_wom_creation.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/wom_creation_response.dart';
import 'package:dart_wom_connector/src/instrument/domain/repositories/instrument_repository.dart';
import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/asymmetric/api.dart';

class InstrumentRepositoryImpl extends InstrumentRepository {
  InstrumentRemoteDataSources instrumentRemoteDataSources;
  Encrypter? encrypter;
  final rsaKeyParser = RSAKeyParser();

  InstrumentRepositoryImpl(
    this.instrumentRemoteDataSources,
    String privateKeyString,
    String publicKeyString,
    String sourceId,
    String domain,
    String? apiKey,
  ) : super(privateKeyString, publicKeyString, sourceId, domain, apiKey) {
    final publicKey = rsaKeyParser.parse(publicKeyString);
    final privateKey = rsaKeyParser.parse(privateKeyString);
    encrypter = Encrypter(RSA(
        publicKey: publicKey as RSAPublicKey?,
        privateKey: privateKey as RSAPrivateKey?));
  }

  @override
  Future<WomCreationResponse> requestWomCreation(
      RequestWomCreation requestWomCreation) async {
    try {
      final payloadMap = requestWomCreation.toJson();

      //encode map to json string
      final payloadMapEncoded = json.encode(payloadMap);

      final encrypted = CoreUtils.encryptLongInput(
          encrypter,
          utf8.encode(payloadMapEncoded) as Uint8List,
          CoreUtils.outputBlockSize(
              rsaKeyParser.parse(publicKey).modulus!.bitLength, true));

      final map = <String, String>{
        'SourceId': requestWomCreation.sourceId,
        'Nonce': requestWomCreation.nonce,
        'Payload': encrypted,
      };

      final headers = <String, String>{};
      if (apiKey != null) {
        headers['X-WOM-ApiKey'] = apiKey!;
      }
      final responseBody = await instrumentRemoteDataSources.requestWomCreation(
          'https://$domain/api/v1/voucher/create', map, headers);

      //decode response body into json
      final jsonResponse = json.decode(responseBody);
      final encryptedPayload = jsonResponse['payload'] as String;

      final base64Decoder = Base64Decoder();
      final decryptedPayload = CoreUtils.decryptLongInput(
          encrypter, base64Decoder.convert(encryptedPayload), 501);

      //decode decrypted paylod into json
      final jsonDecrypted =
          json.decode(decryptedPayload) as Map<String, dynamic>;
      final dto = WomCreationResponseDTO.fromJson(jsonDecrypted);
      return dto.toDomain();
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future<bool> verifyWomCreation(WomCreationResponse response) async {
    final payloadMap = <String, String?>{
      'Otc': response.otc,
    };

    try {
      final payloadMapEncoded = json.encode(payloadMap);

      final payloadEncrypted = CoreUtils.encryptLongInput(
          encrypter,
          Uint8List.fromList(utf8.encode(payloadMapEncoded)),
          CoreUtils.outputBlockSize(
              rsaKeyParser.parse(publicKey).modulus!.bitLength, true));

      final map = <String, dynamic>{
        'Payload': payloadEncrypted,
      };

      final result = await instrumentRemoteDataSources.verifyWomCreation(
          'https://$domain/api/v1/voucher/verify', map);
      return result;
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future requestBatchWomCreation({
    required int wom,
    required List<String> emails,
    required double lat,
    required double long,
    required String aim,
    required String title,
    required String sourceId,
    required String username,
    required String password,
  }) {
    return instrumentRemoteDataSources.requestBatchWomCreation(
      wom: wom,
      emails: emails,
      lat: lat,
      long: long,
      aim: aim,
      title: title,
      sourceId: sourceId,
      username: username,
      password: password,
    );
  }
}
