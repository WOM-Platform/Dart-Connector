// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AimResponse _$$_AimResponseFromJson(Map<String, dynamic> json) =>
    _$_AimResponse(
      aims: (json['aims'] as List<dynamic>)
          .map((e) => AimDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AimResponseToJson(_$_AimResponse instance) =>
    <String, dynamic>{
      'aims': instance.aims,
    };

_$_AimDTO _$$_AimDTOFromJson(Map<String, dynamic> json) => _$_AimDTO(
      code: json['code'] as String,
      titles: Map<String, String>.from(json['titles'] as Map),
      iconFile: json['iconFile'] as String?,
      hidden: json['hidden'] as bool? ?? false,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => AimDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AimDTOToJson(_$_AimDTO instance) => <String, dynamic>{
      'code': instance.code,
      'titles': instance.titles,
      'iconFile': instance.iconFile,
      'hidden': instance.hidden,
      'children': instance.children,
    };
