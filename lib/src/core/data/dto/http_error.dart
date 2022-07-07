
import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_error.freezed.dart';
part 'http_error.g.dart';

@freezed
class HttpErrorDTO with _$HttpErrorDTO {
  const factory HttpErrorDTO({
    required String type,
    required String title,
    required int status,
  }) = _HttpErrorDTO;

  factory HttpErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$HttpErrorDTOFromJson(json);
}