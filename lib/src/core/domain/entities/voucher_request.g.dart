// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VoucherRequest _$$_VoucherRequestFromJson(Map<String, dynamic> json) =>
    _$_VoucherRequest(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      aim: json['aim'] as String,
      count: json['count'] as int,
      timestamp: const VoucherTimestampConverter()
          .fromJson(json['timestamp'] as String),
      creationMode: _$JsonConverterFromJson<String, CreationMode>(
          json['creationMode'], const CreationModeConverter().fromJson),
    );

Map<String, dynamic> _$$_VoucherRequestToJson(_$_VoucherRequest instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'aim': instance.aim,
      'count': instance.count,
      'timestamp': const VoucherTimestampConverter().toJson(instance.timestamp),
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
