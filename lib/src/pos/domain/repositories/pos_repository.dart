import 'dart:typed_data';

import 'package:dart_wom_connector/src/core/domain/repositories/client_repository.dart';
import 'package:dart_wom_connector/src/pos/data/dto/delete_merchant_response.dart';
import '../../../../dart_wom_connector.dart';

abstract class PointOfSaleRepository extends ClientRepository {
  final String publicKey;

  PointOfSaleRepository(this.publicKey);

  Future<PaymentRequestResponse> requestPayment(
      String? privateKeyString, RequestPaymentPayload requestPayment);

  Future<List<Offer>> getOffers(
    String posId,
    String token,
  );

  Future updateCover(
    String posId,
    Uint8List bytes,
    String token,
  );

  Future createOffer(
    String posId,
    CreateOfferRequestDTO request,
    String token,
  );

  Future deleteOffer(
    String posId,
    String offerId,
    String token,
  );

  Future<AnonymousPos> getAnonymousPos();

  Future updatePos(PointOfSale pos, String token);

  Future<String> singUp(
      String email,
      String name,
      String surname,
      String password,
      );

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
  });

  Future<bool> sendVerificationEmail(String userId, String token);

  Future<String> createPOS({
    required String ownerMerchantId,
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
    String? url,
  });

  Future<DeleteMerchantResponse> deleteMerchant(
      {required String merchantId, required String token, bool dryRun = false});

  Future<void> deleteAccount(String userId, String token);
}
