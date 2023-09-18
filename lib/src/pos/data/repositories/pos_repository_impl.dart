import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_wom_connector/dart_wom_connector.dart';
import 'package:dart_wom_connector/src/pos/data/data_sources/merchant_remote_api.dart';
import 'package:dart_wom_connector/src/pos/data/data_sources/pos_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pos/data/dto/delete_merchant_response.dart';
import 'package:dart_wom_connector/src/pos/data/dto/payment_register_payload.dart';
import 'package:dart_wom_connector/src/pos/data/dto/payment_register_response_model.dart';
import 'package:dart_wom_connector/src/pos/domain/repositories/pos_repository.dart';
import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/asymmetric/api.dart';

class PointOfSaleRepositoryImpl extends PointOfSaleRepository {
  final PointOfSaleRemoteDataSources posRemoteDataSources;
  final MerchantRemoteApi merchantRemoteApi;
  final rsaKeyParser = RSAKeyParser();

  PointOfSaleRepositoryImpl(
    this.posRemoteDataSources,
    this.merchantRemoteApi,
    String publicKeyString,
  ) : super(publicKeyString);

  Encrypter _getEncrypter(String publicKeyString, String privateKeyString) {
    final publicKey = rsaKeyParser.parse(publicKeyString);
    final privateKey = rsaKeyParser.parse(privateKeyString);
    return Encrypter(
      RSA(
        publicKey: publicKey as RSAPublicKey?,
        privateKey: privateKey as RSAPrivateKey?,
      ),
    );
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
    RequestPaymentPayload requestPaymentPayload,
    String privateKey,
  ) async {
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
      encrypter,
      base64Decoder.convert(jsonResponse['payload']),
      512,
    );

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

  @override
  Future<List<Offer>> getOffers(String posId, String token) {
    return posRemoteDataSources.getOffers(posId, token);
  }

  @override
  Future createOffer(
    String posId,
    CreateOfferRequestDTO request,
    String token,
  ) async {
    final data = await posRemoteDataSources.createOffer(
      posId,
      request,
      token,
    );
    final json = Map.from(jsonDecode(data));
    print(json);
  }

  @override
  Future deleteOffer(
    String posId,
    String offerId,
    String token,
  ) {
    return posRemoteDataSources.deleteOffer(posId, offerId, token);
  }

  @override
  Future updateCover(
    String posId,
    Uint8List bytes,
    String token,
  ) {
    return posRemoteDataSources.updateCover(posId, bytes, token);
  }

  @override
  Future<AnonymousPos> getAnonymousPos() {
    return posRemoteDataSources.getAnonymousPos();
  }

  @override
  Future updatePos(PointOfSale pos, String token) {
    return posRemoteDataSources.updatePos(pos, token);
  }

  @override
  Future<void> deleteAccount(String userId, String token) {
    return posRemoteDataSources.deleteAccount(userId, token);
  }

  @override
  Future<DeleteMerchantResponse> deleteMerchant({
    required String merchantId,
    required String token,
    bool dryRun = false,
  }) {
    return merchantRemoteApi.deleteMerchant(
      merchantId: merchantId,
      token: token,
      dryRun: dryRun,
    );
  }

  @override
  Future<String> createMerchant({
    required String name,
    required String fiscalCode,
    required String address,
    required String primaryActivity,
    required String zipCode,
    required String city,
    required String country,
    required String token,
    String? googleMapsPlaceId,
    String? formattedAddress,
    String? streetNumber,
    String? description,
    String? url,
  }) {
    return merchantRemoteApi.createMerchant(
      name: name,
      fiscalCode: fiscalCode,
      address: address,
      primaryActivity: primaryActivity,
      zipCode: zipCode,
      city: city,
      country: country,
      token: token,
      description: description,
      url: url,
      googleMapsPlaceId: googleMapsPlaceId,
      formattedAddress: formattedAddress,
      streetNumber: streetNumber,
    );
  }

  @override
  Future<String> createPOS(
      {required String ownerMerchantId,
      required String name,
      required String token,
      String? streetName,
      String? streetNumber,
      String? zipCode,
      String? country,
      String? city,
      String? formattedAddress,
      String? googleMapsPlaceId,
      String? description,
      double? latitude,
      double? longitude,
      String? url}) {
    return merchantRemoteApi.createPOS(
      ownerMerchantId: ownerMerchantId,
      name: name,
      token: token,
      description: description,
      latitude: latitude,
      longitude: longitude,
      streetName: streetName,
      streetNumber: streetNumber,
      zipCode: zipCode,
      country: country,
      city: city,
      formattedAddress: formattedAddress,
      googleMapsPlaceId: googleMapsPlaceId,
      url: url,
    );
  }

  @override
  Future<bool> sendVerificationEmail(String userId, String token) {
    return merchantRemoteApi.sendVerificationEmail(userId, token);
  }

  @override
  Future<String> singUp(
      String email, String name, String surname, String password) {
    return merchantRemoteApi.singUp(email, name, surname, password);
  }
}
