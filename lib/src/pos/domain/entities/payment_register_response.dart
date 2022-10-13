class PaymentRegisterResponse {
  final String registryUrl;
  final String nonce;
  final String otc;
  final String password;
  final String link;

  PaymentRegisterResponse({
    required this.registryUrl,
    required this.nonce,
    required this.otc,
    required this.password,
    required this.link,
  });
}
