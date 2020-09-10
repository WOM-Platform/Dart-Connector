class PaymentRegisterResponse {
  final String registryUrl;
  final String nonce;
  final String otc;
  final String password;

  PaymentRegisterResponse(
      {this.registryUrl, this.nonce, this.otc, this.password});
}
