// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_redeem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseRedeem _$$_ResponseRedeemFromJson(Map<String, dynamic> json) =>
    _$_ResponseRedeem(
      vouchers: (json['vouchers'] as List<dynamic>)
          .map((e) => Voucher.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourceName: json['sourceName'] as String,
      sourceId: json['sourceId'] as String,
    );

Map<String, dynamic> _$$_ResponseRedeemToJson(_$_ResponseRedeem instance) =>
    <String, dynamic>{
      'vouchers': instance.vouchers,
      'sourceName': instance.sourceName,
      'sourceId': instance.sourceId,
    };
