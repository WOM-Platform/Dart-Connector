// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstrumentVoucherStatsDTO _$InstrumentVoucherStatsDTOFromJson(
        Map<String, dynamic> json) =>
    InstrumentVoucherStatsDTO(
      json['totalVouchersGenerated'] as int,
      json['totalVouchersRedeemed'] as int,
    );

Map<String, dynamic> _$InstrumentVoucherStatsDTOToJson(
        InstrumentVoucherStatsDTO instance) =>
    <String, dynamic>{
      'totalVouchersGenerated': instance.totalVouchersGenerated,
      'totalVouchersRedeemed': instance.totalVouchersRedeemed,
    };
