import 'package:dart_wom_connector/src/pos/pos.dart';
import 'package:dart_wom_connector/src/registry/data/remote/registry_remote_data_source.dart';
import 'package:dart_wom_connector/src/registry/domain/entities/pos_map.dart';
import 'package:dart_wom_connector/src/registry/domain/entities/stats.dart';
import 'package:dart_wom_connector/src/registry/data/dto/stats.dart';
import 'package:dart_wom_connector/src/registry/data/dto/pos_map.dart';
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

  @override
  Future<InstrumentVoucherStats> getVoucherStatsBySourceId(
      String sourceId, String username, String password) async {
    try {
      final stats =
          await _api.getVoucherStatsBySourceId(sourceId, username, password);
      return stats.toDomain();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<PointOfSale>> getPosList() {
    // TODO: implement getPosList
    throw UnimplementedError();
  }

  @override
  Future<List<POSMap>> getPosListAroundMe({
    required double llx,
    required double lly,
    required double urx,
    required double ury,
  }) async {
    final response = await _api.getPosListAroundMe(<String, double>{
      'llx': llx,
      'lly': lly,
      'urx': urx,
      'ury': ury,
    });
    return response.pos.map((e) => e.toDomain()).toList();
  }
}
