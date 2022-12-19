// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_payment_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestPaymentPayload _$$_RequestPaymentPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_RequestPaymentPayload(
      amount: json['amount'] as int,
      nonce: json['nonce'] as String,
      posId: json['posId'] as String,
      persistent: json['persistent'] as bool? ?? false,
      pocketAckUrl: json['pocketAckUrl'] as String?,
      simpleFilter: json['simpleFilter'] == null
          ? null
          : SimpleFilter.fromJson(json['simpleFilter'] as Map<String, dynamic>),
      posAckUrl: json['posAckUrl'] as String?,
    );

Map<String, dynamic> _$$_RequestPaymentPayloadToJson(
        _$_RequestPaymentPayload instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'nonce': instance.nonce,
      'posId': instance.posId,
      'persistent': instance.persistent,
      'pocketAckUrl': instance.pocketAckUrl,
      'simpleFilter': instance.simpleFilter,
      'posAckUrl': instance.posAckUrl,
    };
