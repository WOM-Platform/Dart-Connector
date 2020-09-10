import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:dart_wom_connector/src/core/error/failures.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/request_wom_creation_response.dart';
import 'package:dart_wom_connector/src/instrument/domain/repositories/instrument_repository.dart';
import 'package:dartz/dartz.dart';
import '../../core/controller/client.dart';
import '../data/data_sources/instruement_remote_data_sources.dart';
import '../data/repositories/instruement_repository_impl.dart';
import '../domain/entities/request_wom_creation.dart';

class Instrument extends Client {
  final String sourceId;
  final String privKey;
  InstrumentRepository instrumentRepository;

  Instrument(this.sourceId, String domain, String registryKey, this.privKey)
      : super(domain: domain, registryKey: registryKey) {
    instrumentRepository = InstrumentRepositoryImpl(
        InstrumentRemoteDataSourcesImpl(),
        privKey,
        registryKey,
        sourceId,
        domain);
  }

  Future<Either<Failure, RequestWomCreationResponse>> requestVouchers(
      List<Voucher> vouchers) async {
    final request = RequestWomCreation(sourceId, vouchers);
    return instrumentRepository.requestWomCreation(request);
  }

  Future<Either<Failure, bool>> verifyRequest(
      RequestWomCreationResponse requestWomCreationResponse) async {
    return instrumentRepository.verifyWomCreation(requestWomCreationResponse);
  }
}
