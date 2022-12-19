// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bounds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bounds _$$_BoundsFromJson(Map<String, dynamic> json) => _$_Bounds(
      leftTop: (json['leftTop'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      rightBottom: (json['rightBottom'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_BoundsToJson(_$_Bounds instance) => <String, dynamic>{
      'leftTop': instance.leftTop,
      'rightBottom': instance.rightBottom,
    };
