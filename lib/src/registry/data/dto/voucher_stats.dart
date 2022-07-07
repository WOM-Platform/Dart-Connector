import 'package:dart_wom_connector/src/registry/domain/entities/voucher_stats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_stats.g.dart';

@JsonSerializable()
class VoucherStatsDTO {
  final int totalVouchersGenerated;
  final int totalVouchersRedeemed;
  final int totalVouchersAvailable;
  final int totalVouchersSpent;
  final Map<String, AimStatsDTO> aims;

  VoucherStatsDTO(this.totalVouchersGenerated, this.totalVouchersRedeemed,
      this.totalVouchersAvailable, this.totalVouchersSpent, this.aims);

  factory VoucherStatsDTO.fromJson(Map<String, dynamic> json) =>
      _$VoucherStatsDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$VoucherStatsDTOToJson(this);
}

extension VoucherStatsDTOX on VoucherStatsDTO {
  VoucherStats toDomain() {
    return VoucherStats(
      totalVouchersGenerated,
      totalVouchersRedeemed,
      totalVouchersAvailable,
      totalVouchersSpent,
      aims.map<String, AimStats>(
          (key, value) => MapEntry(key, value.toDomain())),
    );
  }
}

@JsonSerializable()
class AimStatsDTO {
  final int generated;
  final int redeemed;
  final int available;
  final int spent;

  AimStatsDTO(this.generated, this.redeemed, this.available, this.spent);

  factory AimStatsDTO.fromJson(Map<String, dynamic> json) =>
      _$AimStatsDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AimStatsDTOToJson(this);
}

extension AimStatsDTOX on AimStatsDTO {
  AimStats toDomain() {
    return AimStats(generated, redeemed, available, spent);
  }
}
