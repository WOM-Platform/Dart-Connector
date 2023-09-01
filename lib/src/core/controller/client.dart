import 'package:dart_wom_connector/src/core/core.dart';
import 'package:dart_wom_connector/src/core/data/http_helper.dart';

import '../domain/entities/user_type_enum.dart';

class WomClient {
  final String domain;
  final String? registryKey;

  WomClient({this.domain = 'wom.social', this.registryKey});

  static Future<AuthResponse> authenticateWihJWT(
      String username, String password, String clientName, String domain, UserType userType) async {
    final map = await HttpHelper.authenticateWithJWT(
        username, password, domain, clientName, userType);
    print(map);
    // final token = map['token'];
    return AuthResponse.fromJson(map);
  }
}
