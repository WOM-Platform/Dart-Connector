// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentRegisterResponse _$$_PaymentRegisterResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentRegisterResponse(
      registryUrl: json['registryUrl'] as String,
      nonce: json['nonce'] as String,
      otc: json['otc'] as String,
      password: json['password'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_PaymentRegisterResponseToJson(
        _$_PaymentRegisterResponse instance) =>
    <String, dynamic>{
      'registryUrl': instance.registryUrl,
      'nonce': instance.nonce,
      'otc': instance.otc,
      'password': instance.password,
      'link': instance.link,
    };
