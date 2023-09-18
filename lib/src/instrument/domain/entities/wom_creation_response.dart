import 'package:freezed_annotation/freezed_annotation.dart';

part 'wom_creation_response.freezed.dart';

@freezed
class WomCreationResponse with _$WomCreationResponse {
  const factory WomCreationResponse({
    required String registryUrl,
    required String nonce,
    required String otc,
    required String password,
    required String link,
    required int count,
  }) = _WomCreationResponse;
}
