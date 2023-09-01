// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MerchantDTO _$$_MerchantDTOFromJson(Map<String, dynamic> json) =>
    _$_MerchantDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      addressDetails: AddressDetailsDTO.fromJson(
          json['addressDetails'] as Map<String, dynamic>),
      access: json['access'] as String,
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
      'addressDetails': instance.addressDetails,
      'access': instance.access,
      'fiscalCode': instance.fiscalCode,
      'pos': instance.pos,
      'description': instance.description,
      'url': instance.url,
    };

_$_AddressDetailsDTO _$$_AddressDetailsDTOFromJson(Map<String, dynamic> json) =>
    _$_AddressDetailsDTO(
      streetName: json['streetName'] as String,
      zipCode: json['zipCode'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      streetNumber: json['streetNumber'] as String?,
      formattedAddress: json['formattedAddress'] as String?,
      googleMapsPlaceId: json['googleMapsPlaceId'] as String?,
    );

Map<String, dynamic> _$$_AddressDetailsDTOToJson(
        _$_AddressDetailsDTO instance) =>
    <String, dynamic>{
      'streetName': instance.streetName,
      'zipCode': instance.zipCode,
      'city': instance.city,
      'country': instance.country,
      'streetNumber': instance.streetNumber,
      'formattedAddress': instance.formattedAddress,
      'googleMapsPlaceId': instance.googleMapsPlaceId,
    };
