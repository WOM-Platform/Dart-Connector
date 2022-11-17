// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Voucher _$$_VoucherFromJson(Map<String, dynamic> json) => _$_Voucher(
      id: json['id'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      aim: json['aim'] as String,
      timestamp: const VoucherTimestampConverter()
          .fromJson(json['timestamp'] as String),
      secret: json['secret'] as String,
      creationMode: _$JsonConverterFromJson<String, CreationMode>(
          json['creationMode'], const CreationModeConverter().fromJson),
    );

Map<String, dynamic> _$$_VoucherToJson(_$_Voucher instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'aim': instance.aim,
      'timestamp': const VoucherTimestampConverter().toJson(instance.timestamp),
      'secret': instance.secret,
      'creationMode': _$JsonConverterToJson<String, CreationMode>(
          instance.creationMode, const CreationModeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
