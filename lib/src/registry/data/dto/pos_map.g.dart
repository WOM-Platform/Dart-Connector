// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_POSMapResponseDTO _$$_POSMapResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_POSMapResponseDTO(
      pos: (json['pos'] as List<dynamic>)
          .map((e) => POSMapDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_POSMapResponseDTOToJson(
        _$_POSMapResponseDTO instance) =>
    <String, dynamic>{
      'pos': instance.pos,
    };

_$_POSMapDTO _$$_POSMapDTOFromJson(Map<String, dynamic> json) => _$_POSMapDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      position: PositionDTO.fromJson(json['position'] as Map<String, dynamic>),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_POSMapDTOToJson(_$_POSMapDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'position': instance.position,
      'url': instance.url,
    };

_$_PositionDTO _$$_PositionDTOFromJson(Map<String, dynamic> json) =>
    _$_PositionDTO(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PositionDTOToJson(_$_PositionDTO instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
