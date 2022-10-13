import 'package:dart_wom_connector/src/pos/pos.dart';
import 'package:dart_wom_connector/src/registry/domain/entities/pos_map.dart';
import 'package:dart_wom_connector/src/registry/domain/entities/stats.dart';
import 'package:dart_wom_connector/src/registry/domain/entities/voucher_stats.dart';

abstract class IRegistryRepository {
  Future<VoucherStats> getVoucherStats();
  Future<InstrumentVoucherStats> getVoucherStatsBySourceId(
      String sourceId, String username, String password);

  Future<List<PointOfSale>> getPosList();

  Future<List<POSMap>> getPosListAroundMe({
    required double llx,
    required double lly,
    required double urx,
    required double ury,
  });
}