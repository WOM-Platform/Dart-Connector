// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AimResponse _$_$_AimResponseFromJson(Map<String, dynamic> json) {
  return _$_AimResponse(
    aims: (json['aims'] as List<dynamic>)
        .map((e) => AimDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_AimResponseToJson(_$_AimResponse instance) =>
    <String, dynamic>{
      'aims': instance.aims,
    };

_$_AimDTO _$_$_AimDTOFromJson(Map<String, dynamic> json) {
  return _$_AimDTO(
    code: json['code'] as String,
    iconFile: json['iconFile'] as String?,
    titles: json['titles'] as Map<String, dynamic>?,
    children: (json['children'] as List<dynamic>)
        .map((e) => AimDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_AimDTOToJson(_$_AimDTO instance) => <String, dynamic>{
      'code': instance.code,
      'iconFile': instance.iconFile,
      'titles': instance.titles,
      'children': instance.children,
    };
