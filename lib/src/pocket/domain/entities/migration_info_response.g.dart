// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'migration_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MigrationInfoResponse _$_$_MigrationInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MigrationInfoResponse(
    accessCount: json['accessCount'] as int,
    deadline: DateTime.parse(json['deadline'] as String),
  );
}

Map<String, dynamic> _$_$_MigrationInfoResponseToJson(
        _$_MigrationInfoResponse instance) =>
    <String, dynamic>{
      'accessCount': instance.accessCount,
      'deadline': instance.deadline.toIso8601String(),
    };
