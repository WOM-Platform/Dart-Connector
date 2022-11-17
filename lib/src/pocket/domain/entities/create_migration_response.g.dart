// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_migration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateMigrationResponse _$$_CreateMigrationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateMigrationResponse(
      registryUrl: json['registryUrl'] as String,
      code: json['code'] as String,
      link: json['link'] as String,
      deadline: DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$_CreateMigrationResponseToJson(
        _$_CreateMigrationResponse instance) =>
    <String, dynamic>{
      'registryUrl': instance.registryUrl,
      'code': instance.code,
      'link': instance.link,
      'deadline': instance.deadline.toIso8601String(),
    };
