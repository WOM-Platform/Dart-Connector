import 'package:dart_wom_connector/src/instrument/domain/entities/request_wom_creation.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/request_wom_creation_response.dart';

abstract class InstrumentRepository {
  final String privateKey, publicKey, sourceId, domain;

  InstrumentRepository(
      this.privateKey, this.publicKey, this.sourceId, this.domain);

  Future<RequestWomCreationResponse> requestWomCreation(
      RequestWomCreation requestWomCreation);

  Future<bool> verifyWomCreation(RequestWomCreationResponse response);
}
