// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_wom_creation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestWomCreation _$$_RequestWomCreationFromJson(
        Map<String, dynamic> json) =>
    _$_RequestWomCreation(
      sourceId: json['sourceId'] as String,
      nonce: json['nonce'] as String,
      vouchers: (json['vouchers'] as List<dynamic>)
          .map((e) => VoucherRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RequestWomCreationToJson(
        _$_RequestWomCreation instance) =>
    <String, dynamic>{
      'sourceId': instance.sourceId,
      'nonce': instance.nonce,
      'vouchers': instance.vouchers,
    };
