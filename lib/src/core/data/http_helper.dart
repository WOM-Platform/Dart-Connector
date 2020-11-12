import 'dart:convert';
import 'package:dart_wom_connector/src/core/error/exceptions.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  static const int TIMEOUT_SECONDS = 10;

  static Future<String> genericHttpPost(
      String url, Map<String, dynamic> map) async {
    final response = await http.post(
      url,
      body: json.encode(map),
      headers: {'content-type': 'application/json'},
    ).timeout(Duration(seconds: TIMEOUT_SECONDS), onTimeout: onTimeout);
    if (response.statusCode == 200) {
      return response.body;
    }
    String error;
    try {
      final jsonError = json.decode(response.body) as Map<String, dynamic>;
      error = jsonError['error'];
    } finally {
      throw ServerException(error: error);
    }
  }

  static Future<String> authenticate(String url, String auth) async {
    final response = await http.post(
      url,
      headers: {
        'authorization': 'Basic $auth',
        'content-type': 'application/json'
      },
    ).timeout(Duration(seconds: TIMEOUT_SECONDS), onTimeout: onTimeout);
    if (response.statusCode == 200) {
      return response.body;
    }
    String error;
    try {
      final jsonError = json.decode(response.body) as Map<String, dynamic>;
      error = jsonError['error'];
    } finally {
      throw ServerException(error: error);
    }
  }

  static Future<http.Response> onTimeout() {
    throw ServerException();
  }
}
