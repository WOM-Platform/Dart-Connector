class PaymentRegisterPayload {
  final String? nonce;
  final String? payload;
  final String? posId;

  PaymentRegisterPayload({this.nonce, this.payload, this.posId});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['posId'] = posId;
    map['nonce'] = nonce;
    map['payload'] = payload;
    return map;
  }
}
