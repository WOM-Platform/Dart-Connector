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
    );

Map<String, dynamic> _$$_VoucherRequestToJson(_$_VoucherRequest instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'aim': instance.aim,
      'count': instance.count,
      'timestamp': const VoucherTimestampConverter().toJson(instance.timestamp),
    };
