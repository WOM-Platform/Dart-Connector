import 'package:dart_wom_connector/src/core/domain/entities/user.dart';
import 'package:dart_wom_connector/src/core/error/failures.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/payment_request_response.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/request_payment_payload.dart';
import 'package:dartz/dartz.dart';

import '../../../../dart_wom_connector.dart';

abstract class PointOfSaleRepository {
  final String publicKeyString;

  PointOfSaleRepository(this.publicKeyString);

  Future<Either<Failure, PaymentRequestResponse>> requestPayment(String privateKeyString,
    RequestPaymentPayload requestPayment
  );

  Future<Either<Failure, User>> authenticate(String username, String password);
}
