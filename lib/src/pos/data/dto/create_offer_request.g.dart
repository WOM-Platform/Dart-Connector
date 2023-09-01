// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_offer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateOfferRequestDTO _$$_CreateOfferRequestDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CreateOfferRequestDTO(
      title: json['title'] as String,
      cost: json['cost'] as int,
      description: json['description'] as String?,
      filter: json['filter'] == null
          ? null
          : SimpleFilter.fromJson(json['filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateOfferRequestDTOToJson(
        _$_CreateOfferRequestDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'cost': instance.cost,
      'description': instance.description,
      'filter': instance.filter,
    };
