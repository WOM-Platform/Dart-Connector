import 'package:dart_wom_connector/src/core/controller/client.dart';
import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:dart_wom_connector/src/core/error/exceptions.dart';
import 'package:dart_wom_connector/src/pocket/data/data_sources/pocket_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pocket/data/repositories/pocket_repository_impl.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/info_pay_response.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/response_redeem.dart';
import 'package:meta/meta.dart';

class Pocket extends Client {
  PocketRepository _pocketRepository;

  @visibleForTesting
  List<Voucher> get vouchers => _vouchers;
  final _vouchers = <Voucher>[];

  Pocket(String domain, String registryKey)
      : super(domain: domain, registryKey: registryKey) {
    _pocketRepository =
        PocketRepositoryImpl(registryKey, PocketRemoteDataSourcesImpl(domain));
  }

  @visibleForTesting
  Future<ResponseRedeem> redeemVouchersForTest(
      String otc, String password) async {
    final response = await _pocketRepository.redeemVouchers(otc, password);
    vouchers.addAll(response.vouchers);
    return response;
  }

  Future<ResponseRedeem> redeemVouchers(String otc, String password) async {
    return await _pocketRepository.redeemVouchers(otc, password);
  }

  Future<InfoPayResponse> requestInfoPayment(
      String otc, String password) async {
    return _pocketRepository.requestInfoPay(otc, password);
  }

  @visibleForTesting
  Future<String> payWithRandomVouchers(
      InfoPayResponse infoPay, String otc, String password) async {
    // final infoPay = await _pocketRepository.requestInfoPay(otc, password);
    List<Voucher> satisfyingVouchers;
    if (infoPay.simpleFilter != null) {
      satisfyingVouchers = _vouchers.where((v) {
        if (infoPay.simpleFilter.aimCode != null &&
            !v.aim.startsWith(infoPay.simpleFilter.aimCode)) {
          // Voucher does not match aim filter
          return false;
        }

        if (infoPay.simpleFilter.bounds != null &&
            !infoPay.simpleFilter.bounds.contains(v.lat, v.long)) {
          // Voucher not contained in geographical bounds
          return false;
        }

        if (infoPay.simpleFilter.maxAge != null &&
            DateTime.now().toUtc().difference(v.dateTime) >
                Duration(days: infoPay.simpleFilter.maxAge)) {
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

  Future<String> pay(InfoPayResponse infoPay, String otc, String password,
      List<Voucher> vouchers) async {
    if (infoPay.amount > vouchers.length) {
      throw InsufficientVouchers();
    }
    final paymentResponse =
        await _pocketRepository.pay(otc, password, infoPay, vouchers);
    return paymentResponse;
  }
}
