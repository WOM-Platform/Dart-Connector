// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'migration_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MigrationInfoResponse _$$_MigrationInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MigrationInfoResponse(
      accessCount: json['accessCount'] as int,
      deadline: DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$_MigrationInfoResponseToJson(
        _$_MigrationInfoResponse instance) =>
    <String, dynamic>{
      'accessCount': instance.accessCount,
      'deadline': instance.deadline.toIso8601String(),
    };
