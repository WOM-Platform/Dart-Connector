// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_of_sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PointOfSaleDTO _$$_PointOfSaleDTOFromJson(Map<String, dynamic> json) =>
    _$_PointOfSaleDTO(
      privateKey: json['privateKey'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      isActive: json['isActive'] as bool,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PointOfSaleDTOToJson(_$_PointOfSaleDTO instance) =>
    <String, dynamic>{
      'privateKey': instance.privateKey,
      'id': instance.id,
      'name': instance.name,
      'isActive': instance.isActive,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'url': instance.url,
    };
