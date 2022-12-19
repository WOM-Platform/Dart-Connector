import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_wom_connector/src/core/utils/utils.dart';
import 'package:dart_wom_connector/src/pos/data/data_sources/pos_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pos/data/dto/payment_register_payload.dart';
import 'package:dart_wom_connector/src/pos/data/dto/payment_register_response_model.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/payment_request_response.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/point_of_sale.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/request_payment_payload.dart';
import 'package:dart_wom_connector/src/pos/domain/repositories/pos_repository.dart';
import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/asymmetric/api.dart';

class PointOfSaleRepositoryImpl extends PointOfSaleRepository {
  final PointOfSaleRemoteDataSources posRemoteDataSources;
  final rsaKeyParser = RSAKeyParser();

  PointOfSaleRepositoryImpl(
    this.posRemoteDataSources,
    String publicKeyString,
  ) : super(publicKeyString);

  Encrypter _getEncrypter(String publicKeyString, String privateKeyString) {
    final publicKey = rsaKeyParser.parse(publicKeyString);
    final privateKey = rsaKeyParser.parse(privateKeyString);
    return Encrypter(RSA(
        publicKey: publicKey as RSAPublicKey?,
        privateKey: privateKey as RSAPrivateKey?));
  }

  @override
  Future<PaymentRequestResponse> requestPayment(String? privateKeyString,
      RequestPaymentPayload requestPaymentPayload) async {
    try {
      final paymentRegisterResponse =
          await _registerPayment(requestPaymentPayload, privateKeyString!);

      final isVerified =
          await _verifyPayment(paymentRegisterResponse.otc, privateKeyString);

      return PaymentRequestResponse(
        paymentRegisterResponse.otc,
        paymentRegisterResponse.password,
        paymentRegisterResponse.link,
      );
    } catch (ex) {
      rethrow;
    }
  }

  Future<PaymentRegisterResponse> _registerPayment(
      RequestPaymentPayload requestPaymentPayload, String privateKey) async {
    final encrypter = _getEncrypter(publicKey, privateKey);

    final requestPaymentPayloadJSON =
        json.encode(requestPaymentPayload.toJson());

    final requestPaymentPayloadJSONEncrypted = CoreUtils.encryptLongInput(
        encrypter,
        Uint8List.fromList(utf8.encode(requestPaymentPayloadJSON)),
        CoreUtils.outputBlockSize(
            rsaKeyParser.parse(publicKey).modulus!.bitLength, true));

    final paymentRegisterPayload = PaymentRegisterPayload(
        nonce: requestPaymentPayload.nonce,
        posId: requestPaymentPayload.posId,
        payload: requestPaymentPayloadJSONEncrypted);

    final responseBody = await posRemoteDataSources.registerPayment(
        'payment/register', paymentRegisterPayload);

    //decode response body into json
    final jsonResponse = json.decode(responseBody);
    final base64Decoder = Base64Decoder();
    final decryptedPayload = CoreUtils.decryptLongInput(
        encrypter, base64Decoder.convert(jsonResponse['payload']), 501);

    //decode decrypted paylod into json
    final Map<String, dynamic> jsonDecrypted = json.decode(decryptedPayload);
    return PaymentRegisterResponse.fromJson(jsonDecrypted);
  }

  Future<bool> _verifyPayment(String? otc, String privateKey) async {
    final encrypter = _getEncrypter(publicKey, privateKey);
    final payloadMap = {
      'otc': otc,
    };

    final payloadMapEncoded = json.encode(payloadMap);

    final payloadEncrypted = CoreUtils.encryptLongInput(
        encrypter,
        utf8.encode(payloadMapEncoded) as Uint8List,
        CoreUtils.outputBlockSize(
            rsaKeyParser.parse(publicKey).modulus!.bitLength, true));

    final verifyMap = {
      'payload': payloadEncrypted,
    };

    return posRemoteDataSources.verifyPayment('payment/verify', verifyMap);
  }
}
