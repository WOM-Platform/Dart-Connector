// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_exchange_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateExchangeRequest _$$_CreateExchangeRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateExchangeRequest(
      sourceId: json['sourceId'] as String,
      nonce: json['nonce'] as String,
      payload: json['payload'] as String,
    );

Map<String, dynamic> _$$_CreateExchangeRequestToJson(
        _$_CreateExchangeRequest instance) =>
    <String, dynamic>{
      'sourceId': instance.sourceId,
      'nonce': instance.nonce,
      'payload': instance.payload,
    };
