import 'package:dart_wom_connector/src/registry/domain/entities/stats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.g.dart';

@JsonSerializable()
class InstrumentVoucherStatsDTO {
  final int totalVouchersGenerated;
  final int totalVouchersRedeemed;

  InstrumentVoucherStatsDTO(this.totalVouchersGenerated, this.totalVouchersRedeemed,);

  factory InstrumentVoucherStatsDTO.fromJson(Map<String, dynamic> json) =>
      _$InstrumentVoucherStatsDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$InstrumentVoucherStatsDTOToJson(this);
}

extension InstrumentVoucherStatsX on InstrumentVoucherStatsDTO {
  InstrumentVoucherStats toDomain() {
    return InstrumentVoucherStats(
      totalVouchersGenerated,
      totalVouchersRedeemed,
    );
  }
}