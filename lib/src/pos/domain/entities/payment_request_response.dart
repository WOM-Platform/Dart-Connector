class PaymentRequestResponse {
  final String? otc;
  final String? password;

  PaymentRequestResponse(this.otc, this.password);

  @override
  String toString() => 'otc: $otc, password: $password';
}
