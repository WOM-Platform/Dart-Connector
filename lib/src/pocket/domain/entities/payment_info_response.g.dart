// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentInfoResponse _$$_PaymentInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentInfoResponse(
      posId: json['posId'] as String,
      posName: json['posName'] as String,
      amount: json['amount'] as int,
      simpleFilter: json['simpleFilter'] == null
          ? null
          : SimpleFilter.fromJson(json['simpleFilter'] as Map<String, dynamic>),
      persistent: json['persistent'] as bool?,
    );

Map<String, dynamic> _$$_PaymentInfoResponseToJson(
        _$_PaymentInfoResponse instance) =>
    <String, dynamic>{
      'posId': instance.posId,
      'posName': instance.posName,
      'amount': instance.amount,
      'simpleFilter': instance.simpleFilter,
      'persistent': instance.persistent,
    };
