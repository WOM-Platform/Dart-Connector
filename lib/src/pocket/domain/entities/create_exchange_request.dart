// {
// "sourceId": "64e5f0c93a5339481060a756",
// "nonce": "GUID",
// "payload": "Payload cifrato con la chiave pubblica della sorgente, vedi sourcePublicKey sopra"
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_exchange_request.freezed.dart';

part 'create_exchange_request.g.dart';

@freezed
class CreateExchangeRequest with _$CreateExchangeRequest {
  const factory CreateExchangeRequest({
    required String sourceId,
    required String nonce,
    required String payload,
  }) = _CreateExchangeRequest;

  factory CreateExchangeRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateExchangeRequestFromJson(json);
}
