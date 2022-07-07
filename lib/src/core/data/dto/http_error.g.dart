// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HttpErrorDTO _$$_HttpErrorDTOFromJson(Map<String, dynamic> json) =>
    _$_HttpErrorDTO(
      type: json['type'] as String,
      title: json['title'] as String,
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_HttpErrorDTOToJson(_$_HttpErrorDTO instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
    };
