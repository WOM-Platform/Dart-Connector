import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_register_response_model.freezed.dart';
part 'payment_register_response_model.g.dart';

@freezed
class PaymentRegisterResponse with _$PaymentRegisterResponse {
  const factory PaymentRegisterResponse({
    required String registryUrl,
    required String nonce,
    required String otc,
    required String password,
    required String link,
  }) = _PaymentRegisterResponse;

  factory PaymentRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentRegisterResponseFromJson(json);
}

/*

class PaymentRegisterResponseModel extends PaymentRegisterResponse {
  static String REGISTRY_URL = 'registryUrl';
  static String NONCE = 'nonce';
  static String OTC = 'otc';
  static String PASSWORD = 'password';
  static String LINK = 'link';

  PaymentRegisterResponseModel(String registryUrl, String nonce, String otc,
      String password, String link)
      : super(
          registryUrl: registryUrl,
          nonce: nonce,
          otc: otc,
          password: password,
          link: link,
        );

  factory PaymentRegisterResponseModel.fromMap(Map<String, dynamic> map) {
    return PaymentRegisterResponseModel(
      map[REGISTRY_URL],
      map[NONCE],
      map[OTC],
      map[PASSWORD],
      map[LINK],
    );
  }
}
*/
