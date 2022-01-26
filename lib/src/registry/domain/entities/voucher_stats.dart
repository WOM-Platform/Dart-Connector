import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_stats.freezed.dart';

@freezed
class VoucherStats with _$VoucherStats {
  factory VoucherStats(int totalVouchersGenerated, int totalVouchersRedeemed,
      int totalVouchersAvailable, Map<String, AimStats> aims) = _VoucherStats;
}


@freezed
class AimStats with _$AimStats {
  factory AimStats(int generated, int redeemed, int available) = _AimStats;
}