import 'dart:io';
import 'dart:typed_data';

import 'package:dart_wom_connector/dart_wom_connector.dart';
import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:dart_wom_connector/src/core/domain/entities/user_type_enum.dart';
import 'package:dart_wom_connector/src/pos/data/data_sources/merchant_remote_api.dart';
import 'package:dart_wom_connector/src/pos/data/data_sources/pos_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pos/data/dto/delete_merchant_response.dart';
import 'package:dart_wom_connector/src/pos/data/dto/merchant.dart';
import 'package:dio/dio.dart';

import '../../core/controller/client.dart';
import '../data/repositories/pos_repository_impl.dart';
import 'repositories/pos_repository.dart';

class PosClient extends WomClient {
  late PointOfSaleRepository _pointOfSaleRepository;

  PosClient(String domain, String registryKey)
      : super(domain: domain, registryKey: registryKey) {
    _pointOfSaleRepository = PointOfSaleRepositoryImpl(
      PointOfSaleRemoteDataSourcesImpl(domain),
      MerchantRemoteApi(Dio(
        BaseOptions(
          baseUrl: 'https://$domain',
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          },
        ),
      )),
      registryKey,
    );
  }

  // Future<POSUser> authenticate(String username, String password) async {
  //   final map =
  //   await HttpHelper.authenticate(username, password, domain, UserType.POS);
  //   print(map);
  //   final id = map['id'];
  //   final name = map[User.dbName];
  //   final surname = map[User.dbSurname];
  //   final email = map[User.dbEmail];
  //   final merchants = map['merchants'] != null
  //       ? map['merchants']
  //       .map<Merchant>((m) => (MerchantDTO.fromJson(m)).toDomain())
  //       .toList()
  //       : <Merchant>[];
  //   return POSUser(
  //     id: id,
  //     merchants: merchants,
  //     name: name,
  //     surname: surname,
  //     email: email,
  //   );
  // }

  Future<POSUser> getUser(String token) async {
    final map = await HttpHelper.getUser(token, domain);
    print(map);
    final id = map['id'];
    final name = map[User.dbName];
    final surname = map[User.dbSurname];
    final email = map[User.dbEmail];
    final verified = map[User.dbVerified];
    final merchants = map['merchants'] != null
        ? map['merchants']
            .map<Merchant>((m) => (MerchantDTO.fromJson(m)).toDomain())
            .toList()
        : <Merchant>[];
    return POSUser(
        id: id,
        merchants: merchants,
        name: name,
        surname: surname,
        email: email,
        verified: verified);
  }

  Future<AuthResponse> authenticate(
    String username,
    String password,
    String clientName,
  ) async {
    return WomClient.authenticateWihJWT(
      username,
      password,
      clientName,
      domain,
      UserType.POS,
    );
  }

  Future<PaymentRequestResponse> requestPayment(
      RequestPaymentPayload requestPaymentPayload, String? privateKey) async {
    return _pointOfSaleRepository.requestPayment(
      privateKey,
      requestPaymentPayload,
    );
  }

  Future<List<Offer>> getOffers(String posId, String token) {
    return _pointOfSaleRepository.getOffers(posId, token);
  }

  Future createOffer(
    String posId,
    CreateOfferRequestDTO request,
      String token,
  ) {
    return _pointOfSaleRepository.createOffer(
      posId,
      request,
      token,
    );
  }

  Future deleteOffer(
    String posId,
    String offerId,
    String token,
  ) {
    return _pointOfSaleRepository.deleteOffer(
      posId,
      offerId,
      token,
    );
  }

  Future updateCover(
    String posId,
    Uint8List bytes,
    String token,
  ) {
    return _pointOfSaleRepository.updateCover(
      posId,
      bytes,
      token,
    );
  }

  Future<AnonymousPos> getAnonymousPos() {
    return _pointOfSaleRepository.getAnonymousPos();
  }

  Future<void> updatePos(PointOfSale pos, String token) {
    return _pointOfSaleRepository.updatePos(pos, token);
  }

  Future<void> deleteAccount(String userId, String token) {
    return _pointOfSaleRepository.deleteAccount(userId, token);
  }

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
    return _pointOfSaleRepository.createMerchant(
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

  Future<String> createPOS({
    required String ownerMerchantId,
    required String name,
    required String token,
    String? description,
    required double latitude,
    required double longitude,
    String? streetName,
    String? streetNumber,
    String? zipCode,
    String? country,
    String? city,
    String? formattedAddress,
    String? googleMapsPlaceId,
    String? url,
  }) {
    return _pointOfSaleRepository.createPOS(
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

  Future<bool> sendVerificationEmail(String userId, String token) {
    return _pointOfSaleRepository.sendVerificationEmail(userId, token);
  }

  Future<String> singUp(
      String email, String name, String surname, String password) {
    return _pointOfSaleRepository.singUp(email, name, surname, password);
  }

  Future<DeleteMerchantResponse> deleteMerchant({
    required String merchantId,
    required String token,
    bool dryRun = false,
  }) {
    return _pointOfSaleRepository.deleteMerchant(
      merchantId: merchantId,
      token: token,
      dryRun: dryRun,
    );
  }
}
