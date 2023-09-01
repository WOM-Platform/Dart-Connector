import 'dart:async';
import 'dart:convert';

import 'package:dart_wom_connector/src/core/data/dto/http_error.dart';
import 'package:dart_wom_connector/src/core/domain/entities/user_type_enum.dart';
import 'package:dart_wom_connector/src/core/error/exceptions.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  static const int TIMEOUT_SECONDS = 10;

  static Future<String> genericHttpPost(
    String url,
    Map<String, dynamic> map, {
    String? username,
    String? password,
  }) async {
    final headers = {'content-type': 'application/json'};

    if (username != null && password != null) {
      final bytes = utf8.encode('$username:$password');
      final auth = Base64Encoder().convert(bytes);
      headers['authorization'] = 'Basic $auth';
    }
    final uri = Uri.parse(url);
    final response = await http
        .post(
          uri,
          body: json.encode(map),
          headers: headers,
        )
        .timeout(Duration(seconds: TIMEOUT_SECONDS), onTimeout: onTimeout);
    if (response.statusCode == 200) {
      return response.body;
    }
    throw handleError(url, response);
  }

  static Future<String> genericHttpPostWithToken(
    String url,
    Map<String, dynamic> map,
    String token,
  ) async {
    final headers = {
      'content-type': 'application/json',
      'authorization': 'Bearer $token'
    };
    final uri = Uri.parse(url);
    final response = await http
        .post(
          uri,
          body: json.encode(map),
          headers: headers,
        )
        .timeout(Duration(seconds: TIMEOUT_SECONDS), onTimeout: onTimeout);
    if (response.statusCode == 200) {
      return response.body;
    }
    throw handleError(url, response);
  }

  static Future<Map<String, dynamic>> getUser(
    String token,
    String domain,
  ) async {
    final url = 'https://$domain/api/v1/user/me';
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'authorization': 'Bearer $token',
        'content-type': 'application/json'
      },
    ).timeout(Duration(seconds: TIMEOUT_SECONDS), onTimeout: onTimeout);
    if (response.statusCode == 200) {
      final body = response.body;
      final map = json.decode(body);
      return map;
    }
    throw handleError(url, response);
  }

  static Future<String> genericHttpGet(String url) async {
    final response = await http
        .get(Uri.parse(url))
        .timeout(Duration(seconds: TIMEOUT_SECONDS), onTimeout: onTimeout);
    print('$url => status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      return response.body;
    }

    throw handleError(url, response);
  }

  static Future<Map<String, dynamic>> authenticateWithJWT(
    String username,
    String password,
    String domain,
    String clientName,
    UserType type,
  ) async {
    final url = 'https://$domain/api/v1/user/login';
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode(
        {
          'email': username,
          'password': password,
          'client': clientName,
        },
      ),
      headers: {
// 'authorization': 'Basic $auth',
        'content-type': 'application/json'
      },
    ).timeout(Duration(seconds: TIMEOUT_SECONDS), onTimeout: onTimeout);
    if (response.statusCode == 200) {
      final body = response.body;
      final map = json.decode(body);
      return map;
    }
    throw handleError(url, response);
  }

  static Future<Map<String, dynamic>> getAnonymousPos(String domain) async {
    final url = 'https://$domain/api/v2/auth/anonymous';
    final response = await http
        .get(
          Uri.parse(url),
        )
        .timeout(Duration(seconds: TIMEOUT_SECONDS), onTimeout: onTimeout);
    if (response.statusCode == 200) {
      final body = response.body;
      final map = json.decode(body);
      return map;
    }
    throw handleError(url, response);
  }

  static ServerException handleError(
      final String url, final http.Response response) {
    HttpErrorDTO? jsonHttpError;
    try {
      final jsonError = json.decode(response.body) as Map<String, dynamic>;
      jsonHttpError = HttpErrorDTO.fromJson(jsonError);
    } finally {
      return ServerException(
          url: url,
          type: jsonHttpError?.type ??
              'https://wom.social/api/problems/unknown-error',
          statusCode: jsonHttpError?.status ?? response.statusCode,
          error: jsonHttpError?.title ?? 'Unknown error');
    }
  }

  static ServerException handleDioError(
    String url,
    Response<dynamic> response,
  ) {
    HttpErrorDTO? jsonHttpError;
    try {
      final jsonError = response.data as Map<String, dynamic>;
      jsonHttpError = HttpErrorDTO.fromJson(jsonError);
    } finally {
      return ServerException(
          url: url,
          type: jsonHttpError?.type ??
              'https://wom.social/api/problems/unknown-error',
          statusCode: jsonHttpError?.status ?? response.statusCode,
          error: jsonHttpError?.title ?? 'Unknown error');
    }
  }

  static ServerException unknownError(String url) {
    return ServerException(
        url: url,
        type: 'https://wom.social/api/problems/unknown-error',
        statusCode: 400,
        error: 'Unknown error');
  }

  static Future<http.Response> onTimeout() {
    throw TimeoutException(null);
  }
}
