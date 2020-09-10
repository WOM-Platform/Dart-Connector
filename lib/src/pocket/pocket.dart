import 'package:dart_wom_connector/src/core/controller/client.dart';
import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:dart_wom_connector/src/core/error/failures.dart';
import 'package:dart_wom_connector/src/pocket/data/data_sources/pocket_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pocket/data/repositories/pocket_repository_impl.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/response_redeem.dart';
import 'package:dartz/dartz.dart';

class Pocket extends Client {
  PocketRepository _pocketRepository;
  final _vouchers = <Voucher>[];
  List<Voucher> get vouchers => _vouchers;
  Pocket(String domain, String registryKey)
      : super(domain: domain, registryKey: registryKey) {
    _pocketRepository =
        PocketRepositoryImpl(registryKey, PocketRemoteDataSourcesImpl(domain));
  }

  Future<Either<Failure, ResponseRedeem>> redeemVouchers(
      String otc, String password) async {
    final result = await _pocketRepository.redeemVouchers(otc, password);
    return result.fold((failure) async => left(failure), (response) {
      vouchers.addAll(response.vouchers);
      return right(response);
    });
  }

  Future<Either<Failure, String>> payWithRandomVouchers(
      String otc, String password) async {
    final res = await _pocketRepository.requestInfoPay(otc, password);
    return res.fold((l) => left(l), (infoPay) async {
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
        return left(InsufficientVouchers());
      }

      satisfyingVouchers.shuffle();
      final v = satisfyingVouchers.getRange(0, infoPay.amount).toList();
      print('v: ${v.length}');
      assert(v.length == infoPay.amount);
      final paymentResponse =
          await _pocketRepository.pay(otc, password, infoPay, v);
      if (paymentResponse.isRight()) {
        v.forEach((element)=> _vouchers.remove(element));
      }
      return paymentResponse;
    });
  }

  Future<Either<Failure, String>> pay(
      String otc, String password, List<Voucher> vouchers) async {
    final res = await _pocketRepository.requestInfoPay(otc, password);
    return res.fold((l) => left(l), (infoPay) async {
      if (infoPay.amount > vouchers.length) {
        return left(InsufficientVouchers());
      }
      final paymentResponse =
          await _pocketRepository.pay(otc, password, infoPay, vouchers);
      return paymentResponse;
    });
  }
}
