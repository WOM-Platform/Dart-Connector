import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:dart_wom_connector/src/core/domain/entities/transaction_type.dart';
import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:dart_wom_connector/src/core/utils/utils.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/wom_creation_response.dart';
import 'package:dart_wom_connector/src/pocket/data/data_sources/pocket_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/auth_exchange.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/create_exchange_request.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/create_migration_response.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/exchange_response.dart';
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

  Future<AuthExchangeResponse> getExchangeKey();

  Future<WomCreationResponse> createExchangeRequest(
    String sourceId,
    String nonce,
    String sourcePublicKey,
    List<Voucher> vouchers,
  );
}
