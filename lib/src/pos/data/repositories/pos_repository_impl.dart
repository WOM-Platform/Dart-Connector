import 'dart:convert';

import 'package:dart_wom_connector/src/core/domain/entities/user.dart';
import 'package:dart_wom_connector/src/core/utils/utils.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/payment_request_response.dart';
import '../../../core/error/failures.dart';
import '../../../core/error/exceptions.dart';
import 'package:dart_wom_connector/src/pos/data/data_sources/pos_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pos/data/models/payment_register_payload.dart';
import 'package:dart_wom_connector/src/pos/data/models/payment_register_response_model.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/request_payment_payload.dart';
import 'package:dart_wom_connector/src/pos/domain/repositories/pos_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:encrypt/encrypt.dart';

class PointOfSaleRepositoryImpl extends PointOfSaleRepository {
  final PointOfSaleRemoteDataSources posRemoteDataSources;

  PointOfSaleRepositoryImpl(
    this.posRemoteDataSources,
    String publicKeyString,
  ) : super(publicKeyString);

  Encrypter _getEncrypter(String publicKeyString, String privateKeyString) {
    final rsaKeyParser = RSAKeyParser();
    final publicKey = rsaKeyParser.parse(publicKeyString);
    final privateKey = rsaKeyParser.parse(privateKeyString);
    return Encrypter(RSA(publicKey: publicKey, privateKey: privateKey));
  }

  @override
  Future<Either<Failure, PaymentRequestResponse>> requestPayment(
      String privateKeyString,
      RequestPaymentPayload requestPaymentPayload) async {
    print('[PointOfSaleRepositoryImpl] requestPayment');
    try {
      final paymentRegisterResponse =
          await _registerPayment(requestPaymentPayload, privateKeyString);

      final isVerified =
          await _verifyPayment(paymentRegisterResponse.otc, privateKeyString);
      print('payment request verified: $isVerified');
      return right(PaymentRequestResponse(
          paymentRegisterResponse.otc, paymentRegisterResponse.password));
    } on ServerException catch (ex) {
      return left(ServerFailure(ex.error));
    } on VerifyPaymentException {
      return left(VerifyPaymentFailure());
    } catch (ex) {
      print(ex);
      return left(UnknownFailure(ex.toString()));
    }
  }

  Future<PaymentRegisterResponseModel> _registerPayment(
      RequestPaymentPayload requestPaymentPayload, String privateKey) async {
    print('[PointOfSaleRepositoryImpl] _registerPayment');
    final encrypter = _getEncrypter(publicKeyString, privateKey);

    final requestPaymentPayloadJSON =
        json.encode(requestPaymentPayload.toMap());

    print(requestPaymentPayloadJSON);

//    final requestPaymentPayloadJSONEncrypted =
//        await encrypter.encrypt(requestPaymentPayloadJSON);

    final rsaKeyParser = RSAKeyParser();
    final publicKey = rsaKeyParser.parse(publicKeyString);
    final requestPaymentPayloadJSONEncrypted = await Utils.encryptLongString(
        encrypter,
        utf8.encode(requestPaymentPayloadJSON),
        Utils.outputBlockSize(publicKey.modulus.bitLength, true));

    final paymentRegisterPayload = PaymentRegisterPayload(
        nonce: requestPaymentPayload.nonce,
        posId: requestPaymentPayload.posId,
        payload: requestPaymentPayloadJSONEncrypted);

    final responseBody = await posRemoteDataSources.registerPayment(
        'payment/register', paymentRegisterPayload);

    //decode response body into json
    final jsonResponse = json.decode(responseBody);

    final decryptedPayload =
        await encrypter.decrypt(Encrypted.fromBase64(jsonResponse['payload']));

    //decode decrypted paylod into json
    final Map<String, dynamic> jsonDecrypted = json.decode(decryptedPayload);
    print(jsonDecrypted.toString());
    return PaymentRegisterResponseModel.fromMap(jsonDecrypted);
  }

  Future<bool> _verifyPayment(String otc, String privateKey) async {
    print('[PointOfSaleRepositoryImpl] _verifyPayment');
    final encrypter = _getEncrypter(publicKeyString, privateKey);
    final payloadMap = {
      'otc': otc,
    };

    print(payloadMap.toString());

    final payloadMapEncoded = json.encode(payloadMap);
    final payloadEncrypted = await encrypter.encrypt(payloadMapEncoded);

    final verifyMap = {
      'payload': payloadEncrypted.base64,
    };

    return posRemoteDataSources.verifyPayment('payment/verify', verifyMap);
  }

  @override
  Future<Either<Failure, User>> authenticate(
      String username, String password) async {
    print('[PointOfSaleRepositoryImpl] authenticate');
    try {
      final user = await posRemoteDataSources.authenticate(username, password);
      return right(user);
    } catch (e) {
      print(e);
      return left(UnknownFailure(e.toString()));
    }
  }
}
