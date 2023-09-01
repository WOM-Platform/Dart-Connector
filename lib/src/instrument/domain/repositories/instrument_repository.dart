import 'package:dart_wom_connector/src/core/domain/repositories/client_repository.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/request_wom_creation.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/wom_creation_response.dart';

abstract class InstrumentRepository extends ClientRepository {
  final String privateKey, publicKey, sourceId, domain;
  final String? apiKey;

  InstrumentRepository(
    this.privateKey,
    this.publicKey,
    this.sourceId,
    this.domain,
    this.apiKey,
  );

  Future<WomCreationResponse> requestWomCreation(
      RequestWomCreation requestWomCreation);

  Future<bool> verifyWomCreation(WomCreationResponse response);

  Future requestBatchWomCreation({
    required int wom,
    required List<String> emails,
    required double lat,
    required double long,
    required String aim,
    required String title,
    required String sourceId,
    required String username,
    required String password,
  });
}
