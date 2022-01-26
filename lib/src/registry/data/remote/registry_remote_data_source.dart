import 'dart:convert';

import 'package:dart_wom_connector/src/core/data/client_remote_data_sources.dart';
import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:dart_wom_connector/src/registry/data/dto/voucher_stats.dart';

abstract class RegistryRemoteDataSources extends WomClientRemoteDataSources {
  RegistryRemoteDataSources(String domain) : super(domain);

  Future<VoucherStatsDTO> getVouchersStats();
}

class RegistryRemoteDataSourcesImpl extends RegistryRemoteDataSources {
  RegistryRemoteDataSourcesImpl(String baseUrl) : super(baseUrl);

  @override
  Future<VoucherStatsDTO> getVouchersStats() async {
    final jsonString =
        await HttpHelper.genericHttpGet('https://$domain/api/v1/stats/vouchers');
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    return VoucherStatsDTO.fromJson(json);
  }
}
