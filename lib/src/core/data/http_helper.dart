import 'dart:convert';

import 'package:dart_wom_connector/src/core/domain/entities/user_type_enum.dart';
import 'package:dart_wom_connector/src/core/error/exceptions.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  static const int TIMEOUT_SECONDS = 10;

  static Future<String> genericHttpPost(
      String url, Map<String, dynamic> map) async {
    final response = await http.post(
      Uri.parse(url),
      body: json.encode(map),
      headers: {'content-type': 'application/json'},
    ).timeout(Duration(seconds: TIMEOUT_SECONDS), onTimeout: onTimeout);
    if (response.statusCode == 200) {
      return response.body;
    }
    var error = 'Unknown error';
    try {
      final jsonError = json.decode(response.body) as Map<String, dynamic>;
      error = jsonError['error'];
    } finally {
      throw ServerException(
          url: url, statusCode: response.statusCode, error: error);
    }
  }

  static Future<Map<String, dynamic>> authenticate(
      String username, String password, String domain, UserType type) async {
    final bytes = utf8.encode('$username:$password');
    final auth = Base64Encoder().convert(bytes);
    final url =
        'https://$domain/api/v2/auth/${type == UserType.Instrument ? 'source' : 'merchant'}';
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'authorization': 'Basic $auth',
        'content-type': 'application/json'
      },
    ).timeout(Duration(seconds: TIMEOUT_SECONDS), onTimeout: onTimeout);
    if (response.statusCode == 200) {
      final body = response.body;
      final map = json.decode(body);
      return map;
    }
    var error = 'Unknown error';
    try {
      final jsonError = json.decode(response.body) as Map<String, dynamic>;
      error = jsonError['error'];
    } finally {
      throw ServerException(
          url: url, statusCode: response.statusCode, error: error);
    }
  }

  static Future<http.Response> onTimeout() {
    throw TimeoutException();
  }
}
