
import 'package:freezed_annotation/freezed_annotation.dart';


part 'auth_exchange.freezed.dart';
part 'auth_exchange.g.dart';

@freezed
class AuthExchangeResponse with _$AuthExchangeResponse {
  const factory AuthExchangeResponse({
    required String sourceId,
    required String sourcePublicKey,
  }) = _AuthExchangeResponse;

  factory AuthExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthExchangeResponseFromJson(json);
}