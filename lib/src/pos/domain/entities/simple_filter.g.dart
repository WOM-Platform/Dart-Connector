// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SimpleFilter _$$_SimpleFilterFromJson(Map<String, dynamic> json) =>
    _$_SimpleFilter(
      aim: json['aim'] as String?,
      bounds: json['bounds'] == null
          ? null
          : Bounds.fromJson(json['bounds'] as Map<String, dynamic>),
      maxAge: json['maxAge'] as int?,
    );

Map<String, dynamic> _$$_SimpleFilterToJson(_$_SimpleFilter instance) =>
    <String, dynamic>{
      'aim': instance.aim,
      'bounds': instance.bounds,
      'maxAge': instance.maxAge,
    };
