import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_migration_response.freezed.dart';
part 'create_migration_response.g.dart';

@freezed
class CreateMigrationResponse with _$CreateMigrationResponse {
  const factory CreateMigrationResponse({
    required String registryUrl,
    required String code,
    required String link,
    required DateTime deadline,
  }) = _CreateMigrationResponse;

  factory CreateMigrationResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateMigrationResponseFromJson(json);
}
