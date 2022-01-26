import 'package:dart_wom_connector/dart_wom_connector.dart';
import 'package:dart_wom_connector/src/registry/data/remote/registry_remote_data_source.dart';
import 'package:dart_wom_connector/src/registry/data/repositories/registry_repo.dart';
import 'package:dart_wom_connector/src/registry/domain/entities/voucher_stats.dart';

import '../../core/controller/client.dart';

class RegistryClient extends Client {
  late RegistryRepository _registryRepository;

  RegistryClient(String domain) : super(domain: domain) {
    _registryRepository = RegistryRepository(
      RegistryRemoteDataSourcesImpl(domain),
    );
  }

  Future<VoucherStats> getVoucherStats() async {
    return _registryRepository.getVoucherStats();
  }
}
