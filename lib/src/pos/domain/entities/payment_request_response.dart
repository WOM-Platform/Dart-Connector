class PaymentRequestResponse {
  final String otc;
  final String password;
  final String link;

  PaymentRequestResponse(this.otc, this.password, this.link);

  @override
  String toString() => 'otc: $otc, password: $password';
}
