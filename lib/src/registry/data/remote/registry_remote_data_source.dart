import 'dart:convert';
import 'dart:io';
import 'package:dart_wom_connector/src/registry/data/dto/pos_map.dart';
import 'package:dart_wom_connector/src/registry/data/dto/stats.dart';
import 'package:dart_wom_connector/src/registry/domain/entities/stats.dart';
import 'package:http/http.dart' as http;
import 'package:dart_wom_connector/src/core/data/client_remote_data_sources.dart';
import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:dart_wom_connector/src/core/error/exceptions.dart';
import 'package:dart_wom_connector/src/registry/data/dto/voucher_stats.dart';

abstract class RegistryRemoteDataSources extends WomClientRemoteDataSources {
  RegistryRemoteDataSources(String domain) : super(domain);

  Future<VoucherStatsDTO> getVouchersStats();

  Future<InstrumentVoucherStatsDTO> getVoucherStatsBySourceId(
      String sourceId, String username, String password);

  Future<POSMapResponseDTO> getPosListAroundMe(Map<String, double> map);
}

class RegistryRemoteDataSourcesImpl extends RegistryRemoteDataSources {
  RegistryRemoteDataSourcesImpl(String baseUrl) : super(baseUrl);

  @override
  Future<VoucherStatsDTO> getVouchersStats() async {
    final jsonString = await HttpHelper.genericHttpGet(
        'https://$domain/api/v1/stats/vouchers');
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    return VoucherStatsDTO.fromJson(json);
  }

  @override
  Future<InstrumentVoucherStatsDTO> getVoucherStatsBySourceId(
      String sourceId, String username, String password) async {
    final url = 'https://$domain/api/v1/stats/vouchers/$sourceId';
    final basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    print(basicAuth);
    final response = await http.get(
      Uri.parse(url),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader: basicAuth,
      },
    );
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    print(response.body);
    if (response.statusCode == 200) {
      return InstrumentVoucherStatsDTO.fromJson(json);
    }
    throw HttpHelper.handleError(url, response);
  }

  @override
  Future<POSMapResponseDTO> getPosListAroundMe(Map<String, double> map) async {
    final uri = Uri.https(domain, '/api/v1/map/pos',
        map.map((key, value) => MapEntry(key, value.toString())));
    final jsonString = await HttpHelper.genericHttpPost(uri.toString(), {});
    final jsonResponse = json.decode(jsonString);
    return POSMapResponseDTO.fromJson(jsonResponse);
  }
}
