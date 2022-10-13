// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MerchantDTO _$$_MerchantDTOFromJson(Map<String, dynamic> json) =>
    _$_MerchantDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      zipCode: json['zipCode'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      fiscalCode: json['fiscalCode'] as String,
      pos: (json['pos'] as List<dynamic>)
          .map((e) => PointOfSaleDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_MerchantDTOToJson(_$_MerchantDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'zipCode': instance.zipCode,
      'city': instance.city,
      'country': instance.country,
      'fiscalCode': instance.fiscalCode,
      'pos': instance.pos,
      'description': instance.description,
      'url': instance.url,
    };
