
// {
//   "payload": "Payload cifrato con chiave di sessione"
// }

/*{
  "registryUrl": "https://dev.wom.social",
  "nonce": "GUID",
  "otc": "GUID",
  "password": "1234",
  "link": "https://link.dev.wom.social/vouchers/...",
  "count": 123
}
*/

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_response.freezed.dart';
part 'exchange_response.g.dart';

@freezed
class ExchangeResponse with _$ExchangeResponse {
  const factory ExchangeResponse({
    required String payload,
  }) = _ExchangeResponse;

  factory ExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeResponseFromJson(json);
}