import 'package:dart_wom_connector/src/core/error/failures.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/request_wom_creation.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/request_wom_creation_response.dart';
import 'package:dartz/dartz.dart';

abstract class InstrumentRepository {
  final String privateKey, publicKey, sourceId, domain;

  InstrumentRepository(
      this.privateKey, this.publicKey, this.sourceId, this.domain);

  Future<Either<Failure, RequestWomCreationResponse>> requestWomCreation(
      RequestWomCreation requestWomCreation);

  Future<Either<Failure, bool>> verifyWomCreation(
      RequestWomCreationResponse response);
}
