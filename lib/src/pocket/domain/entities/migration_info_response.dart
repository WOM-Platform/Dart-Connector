import 'package:freezed_annotation/freezed_annotation.dart';

part 'migration_info_response.freezed.dart';
part 'migration_info_response.g.dart';

@freezed
class MigrationInfoResponse with _$MigrationInfoResponse {
  const factory MigrationInfoResponse({
    required int accessCount,
    required DateTime deadline,
  }) = _MigrationInfoResponse;

  factory MigrationInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$MigrationInfoResponseFromJson(json);
}
