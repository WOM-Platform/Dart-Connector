import 'dart:io';
import 'dart:typed_data';

import 'package:dart_wom_connector/src/core/controller/client.dart';
import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:dart_wom_connector/src/core/error/exceptions.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/wom_creation_response.dart';
import 'package:dart_wom_connector/src/pocket/data/data_sources/pocket_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pocket/data/repositories/pocket_repository_impl.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/auth_exchange.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/offer.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/payment_info_response.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/response_redeem.dart';
import 'package:dart_wom_connector/src/pocket/domain/repositories/pocket_repository.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/bounds.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'entities/create_migration_response.dart';
import 'entities/migration_info_response.dart';

class Pocket extends WomClient {
  late PocketRepository _pocketRepository;

  @visibleForTesting
  List<Voucher> get vouchers => _vouchers;
  final _vouchers = <Voucher>[];

  Pocket(String domain, String registryKey)
      : super(domain: domain, registryKey: registryKey) {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://$domain',
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      ),
    );
    dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
      responseBody: true,
      requestHeader: true,
    ));
    _pocketRepository = PocketRepositoryImpl(
      registryKey,
      PocketRemoteDataSourcesImpl(domain),
      RestClient(dio),
    );
  }

  @visibleForTesting
  Future<ResponseRedeem> redeemVouchersForTest(String? otc, String? password,
      {double? lat, double? long}) async {
    final response = await _pocketRepository.redeemVouchers(otc, password,
        lat: lat, long: long);
    vouchers.addAll(response.vouchers);
    return response;
  }

  Future<ResponseRedeem> redeemVouchers(String otc, String password,
      {double? lat, double? long}) async {
    return await _pocketRepository.redeemVouchers(otc, password,
        lat: lat, long: long);
  }

  Future<PaymentInfoResponse> requestInfoPayment(
      String? otc, String? password) async {
    return _pocketRepository.requestInfoPay(otc, password);
  }

  @visibleForTesting
  Future<String?> payWithRandomVouchers(
      PaymentInfoResponse infoPay, String? otc, String? password) async {
    // final infoPay = await _pocketRepository.requestInfoPay(otc, password);
    List<Voucher> satisfyingVouchers;
    if (infoPay.simpleFilter != null) {
      satisfyingVouchers = _vouchers.where((v) {
        if (infoPay.simpleFilter!.aim != null &&
            !v.aim.startsWith(infoPay.simpleFilter!.aim!)) {
          // Voucher does not match aim filter
          return false;
        }

        if (infoPay.simpleFilter!.bounds != null &&
            !infoPay.simpleFilter!.bounds!.contains(v.latitude, v.longitude)) {
          // Voucher not contained in geographical bounds
          return false;
        }

        if (infoPay.simpleFilter!.maxAge != null &&
            DateTime.now().toUtc().difference(v.timestamp) >
                Duration(days: infoPay.simpleFilter!.maxAge!)) {
          // Voucher too old
          return false;
        }

        return true;
      }).toList();
    } else {
      satisfyingVouchers = _vouchers;
    }

    if (infoPay.amount > satisfyingVouchers.length) {
      throw InsufficientVouchers();
    }

    satisfyingVouchers.shuffle();
    final v = satisfyingVouchers.getRange(0, infoPay.amount).toList();
    assert(v.length == infoPay.amount);
    final paymentResponse =
        await _pocketRepository.pay(otc, password, infoPay, v);

    v.forEach((element) => _vouchers.remove(element));
    return paymentResponse;
  }

  Future<String?> pay(PaymentInfoResponse infoPay, String? otc,
      String? password, List<Voucher> vouchers) async {
    if (infoPay.amount > vouchers.length) {
      throw InsufficientVouchers();
    }
    final paymentResponse =
        await _pocketRepository.pay(otc, password, infoPay, vouchers);
    return paymentResponse;
  }

  Future<CreateMigrationResponse> createNewMigration(
      List<int> bytes, String password) async {
    return await _pocketRepository.createNewMigration(bytes, password);
  }

  Future<CreateMigrationResponse> createNewMigrationV2(
      List<Voucher> vouchers, String password) async {
    return await _pocketRepository.createNewMigrationV2(vouchers, password);
  }

  Future<MigrationInfoResponse> getInfoAboutMigration(
      String guid, String password) async {
    return await _pocketRepository.getInfoAboutMigration(guid, password);
  }

  Future<Uint8List> retrieveMigrationPayload(
      String guid, String password) async {
    return await _pocketRepository.retrieveMigrationPayload(guid, password);
  }

  Future<void> completeMigration(String guid, String password) async {
    return _pocketRepository.completeMigration(guid, password);
  }

  Future<List<OfferPOS>> getOffers({
    required double latitude,
    required double longitude,
    int? page,
    int? pageSize,
  }) {
    return _pocketRepository.getOffers(
      latitude: latitude,
      longitude: longitude,
    );
  }

  Future<List<OfferPOS>> getOffersByBox({
    required double lly,
    required double llx,
    required double ury,
    required double urx,
  }) {
    return _pocketRepository.getOffersByBox(
      lly: lly,
      llx: llx,
      ury: ury,
      urx: urx,
    );
  }

  Future<OfferPagination> getVirtualPos(int page, {int pageSize = 10}) {
    return _pocketRepository.getVirtualPos(page, pageSize: pageSize);
  }

  Future<AuthExchangeResponse> getExchangeKey() {
    return _pocketRepository.getExchangeKey();
  }

  Future<WomCreationResponse> createExchangeRequest(
    String sourceId,
    String nonce,
    String sourcePublicKey,
    List<Voucher> vouchers,
  ) {
    return _pocketRepository.createExchangeRequest(
      sourceId,
      nonce,
      sourcePublicKey,
      vouchers,
    );
  }
}
