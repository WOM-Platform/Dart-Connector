// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_merchant_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeleteMerchantResponse _$$_DeleteMerchantResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteMerchantResponse(
      operationPerformed: json['operationPerformed'] as bool,
      countOfDeletedMerchants: json['countOfDeletedMerchants'] as int,
      countOfDeletedPos: json['countOfDeletedPos'] as int,
      countOfDeletedOffers: json['countOfDeletedOffers'] as int,
    );

Map<String, dynamic> _$$_DeleteMerchantResponseToJson(
        _$_DeleteMerchantResponse instance) =>
    <String, dynamic>{
      'operationPerformed': instance.operationPerformed,
      'countOfDeletedMerchants': instance.countOfDeletedMerchants,
      'countOfDeletedPos': instance.countOfDeletedPos,
      'countOfDeletedOffers': instance.countOfDeletedOffers,
    };
