import 'package:dart_wom_connector/dart_wom_connector.dart';
import 'package:dart_wom_connector/src/core/domain/entities/user.dart';
import 'package:dart_wom_connector/src/pos/data/data_sources/pos_remote_data_sources.dart';
import 'package:dartz/dartz.dart';
import '../../core/controller/client.dart';
import '../../core/error/failures.dart';
import '../data/repositories/pos_repository_impl.dart';
import '../domain/entities/payment_request_response.dart';
import '../domain/entities/request_payment_payload.dart';
import '../domain/repositories/pos_repository.dart';

class Pos extends Client {
  PointOfSaleRepository _pointOfSaleRepository;

  Pos(String domain, String registryKey)
      : super(domain: domain, registryKey: registryKey) {
    _pointOfSaleRepository = PointOfSaleRepositoryImpl(
      PointOfSaleRemoteDataSourcesImpl(domain),
      registryKey,
    );
  }

  Future<Either<Failure, User>> authenticate(
      String username, String password) async {
    return _pointOfSaleRepository.authenticate(username, password);
  }

  Future<Either<Failure, PaymentRequestResponse>> requestPayment(
      RequestPaymentPayload requestPaymentPayload,
      String privateKey) async {
    return _pointOfSaleRepository.requestPayment(
      privateKey,
      requestPaymentPayload,
    );
  }
}
