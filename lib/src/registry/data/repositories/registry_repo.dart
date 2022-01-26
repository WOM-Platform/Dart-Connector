import 'package:dart_wom_connector/src/registry/data/remote/registry_remote_data_source.dart';
import 'package:dart_wom_connector/src/registry/domain/entities/voucher_stats.dart';
import 'package:dart_wom_connector/src/registry/data/dto/voucher_stats.dart';
import 'package:dart_wom_connector/src/registry/domain/repositories/i_registry_repo.dart';

class RegistryRepository extends IRegistryRepository {
  final RegistryRemoteDataSources _api;

  RegistryRepository(this._api);

  @override
  Future<VoucherStats> getVoucherStats() async {
    try {
      final v = await _api.getVouchersStats();
      return v.toDomain();
    } catch (ex) {
      rethrow;
    }
  }
}
