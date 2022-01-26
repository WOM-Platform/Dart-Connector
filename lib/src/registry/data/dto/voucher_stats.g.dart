// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoucherStatsDTO _$VoucherStatsDTOFromJson(Map<String, dynamic> json) {
  return VoucherStatsDTO(
    json['totalVouchersGenerated'] as int,
    json['totalVouchersRedeemed'] as int,
    json['totalVouchersAvailable'] as int,
    (json['aims'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, AimStatsDTO.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$VoucherStatsDTOToJson(VoucherStatsDTO instance) =>
    <String, dynamic>{
      'totalVouchersGenerated': instance.totalVouchersGenerated,
      'totalVouchersRedeemed': instance.totalVouchersRedeemed,
      'totalVouchersAvailable': instance.totalVouchersAvailable,
      'aims': instance.aims,
    };

AimStatsDTO _$AimStatsDTOFromJson(Map<String, dynamic> json) {
  return AimStatsDTO(
    json['generated'] as int,
    json['redeemed'] as int,
    json['available'] as int,
  );
}

Map<String, dynamic> _$AimStatsDTOToJson(AimStatsDTO instance) =>
    <String, dynamic>{
      'generated': instance.generated,
      'redeemed': instance.redeemed,
      'available': instance.available,
    };
