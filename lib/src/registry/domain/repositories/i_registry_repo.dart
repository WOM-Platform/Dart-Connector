import 'package:dart_wom_connector/src/registry/domain/entities/voucher_stats.dart';

abstract class IRegistryRepository {
  Future<VoucherStats> getVoucherStats();
}