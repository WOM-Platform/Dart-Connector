import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:dart_wom_connector/src/core/error/exceptions.dart';
import 'package:http/http.dart' as http;

abstract class ApiKeyRemoteDataSources {
  Future<String> getRegistryKey(String domain);
}

class ApiKeyRemoteDataSourcesImpl extends ApiKeyRemoteDataSources {
  @override
  Future<String> getRegistryKey(String domain) async {
    final response = await http
        .get(Uri.parse('https://$domain/api/v2/auth/key'))
        .timeout(Duration(seconds: HttpHelper.TIMEOUT_SECONDS),
            onTimeout: HttpHelper.onTimeout);
    if (response.statusCode == 200) {
      return response.body;
    }
    throw ServerException();
  }
}
