import 'package:dart_wom_connector/src/core/domain/entities/user.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/payment_request_response.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/request_payment_payload.dart';

import '../../../../dart_wom_connector.dart';

abstract class PointOfSaleRepository {
  final String publicKey;

  PointOfSaleRepository(this.publicKey);

  Future<PaymentRequestResponse> requestPayment(
      String? privateKeyString, RequestPaymentPayload requestPayment);

  Future<User> authenticate(String username, String password);
}
