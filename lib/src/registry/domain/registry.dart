import 'package:dart_wom_connector/dart_wom_connector.dart';
import 'package:dart_wom_connector/src/registry/data/remote/registry_remote_data_source.dart';
import 'package:dart_wom_connector/src/registry/data/repositories/registry_repo.dart';

import '../../core/controller/client.dart';

class RegistryClient extends WomClient {
  late RegistryRepository _registryRepository;

  RegistryClient(String domain) : super(domain: domain) {
    _registryRepository = RegistryRepository(
      RegistryRemoteDataSourcesImpl(domain),
    );
  }

  Future<VoucherStats> getVoucherStats() async {
    return _registryRepository.getVoucherStats();
  }

  Future<InstrumentVoucherStats> getVoucherStatsBySourceId(
      String sourceId, String username, String password) {
    return _registryRepository.getVoucherStatsBySourceId(
        sourceId, username, password);
  }

  Future<List<POSMap>> getPosListAroundMe({
    required double llx,
    required double lly,
    required double urx,
    required double ury,
  }) {
    return _registryRepository.getPosListAroundMe(
        llx: llx, lly: lly, urx: urx, ury: ury);
  }
}
