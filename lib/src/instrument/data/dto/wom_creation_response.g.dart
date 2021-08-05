// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wom_creation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WomCreationResponseDTO _$_$_WomCreationResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _$_WomCreationResponseDTO(
    registryUrl: json['registryUrl'] as String,
    nonce: json['nonce'] as String,
    otc: json['otc'] as String,
    password: json['password'] as String,
    link: json['link'] as String,
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$_$_WomCreationResponseDTOToJson(
        _$_WomCreationResponseDTO instance) =>
    <String, dynamic>{
      'registryUrl': instance.registryUrl,
      'nonce': instance.nonce,
      'otc': instance.otc,
      'password': instance.password,
      'link': instance.link,
      'count': instance.count,
    };
