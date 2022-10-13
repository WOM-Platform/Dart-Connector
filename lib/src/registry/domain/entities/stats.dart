import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';

@freezed
class InstrumentVoucherStats with _$InstrumentVoucherStats {
  factory InstrumentVoucherStats(
    int totalVouchersGenerated,
    int totalVouchersRedeemed,
  ) = _InstrumentVoucherStats;
}
