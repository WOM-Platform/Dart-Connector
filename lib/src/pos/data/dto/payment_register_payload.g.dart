// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_register_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentRegisterPayload _$$_PaymentRegisterPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentRegisterPayload(
      payload: json['payload'] as String,
      nonce: json['nonce'] as String,
      posId: json['posId'] as String,
    );

Map<String, dynamic> _$$_PaymentRegisterPayloadToJson(
        _$_PaymentRegisterPayload instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'nonce': instance.nonce,
      'posId': instance.posId,
    };
