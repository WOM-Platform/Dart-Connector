import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_register_payload.freezed.dart';
part 'payment_register_payload.g.dart';

@freezed
class PaymentRegisterPayload with _$PaymentRegisterPayload {
  const factory PaymentRegisterPayload({
    required String payload,
    required String nonce,
    required String posId,
  }) = _PaymentRegisterPayload;

  factory PaymentRegisterPayload.fromJson(Map<String, dynamic> json) =>
      _$PaymentRegisterPayloadFromJson(json);
}
