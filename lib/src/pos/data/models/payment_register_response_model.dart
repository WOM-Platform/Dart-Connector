import 'package:dart_wom_connector/src/pos/domain/entities/payment_register_response.dart';

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
