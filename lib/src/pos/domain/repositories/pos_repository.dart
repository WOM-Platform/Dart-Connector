import 'package:dart_wom_connector/src/core/domain/repositories/client_repository.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/payment_request_response.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/request_payment_payload.dart';

import '../../../../dart_wom_connector.dart';

abstract class PointOfSaleRepository extends ClientRepository {
  final String publicKey;

  PointOfSaleRepository(this.publicKey);

  Future<PaymentRequestResponse> requestPayment(
      String? privateKeyString, RequestPaymentPayload requestPayment);
}
