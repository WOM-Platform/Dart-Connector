import 'dart:convert';
import 'dart:io';

import 'package:dart_wom_connector/src/core/data/client_remote_data_sources.dart';
import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:http/http.dart' as http;

abstract class InstrumentRemoteDataSources extends WomClientRemoteDataSources {
  InstrumentRemoteDataSources(String domain) : super(domain);

  Future<String> requestWomCreation(
      String url, Map<String, String> map, Map<String, String> headers);

  Future<bool> verifyWomCreation(String url, Map<String, dynamic> map);

  Future requestBatchWomCreation({
    required int wom,
    required List<String> emails,
    required double lat,
    required double long,
    required String aim,
    required String title,
    required String sourceId,
    required String username,
    required String password,
  });
}

class InstrumentRemoteDataSourcesImpl extends InstrumentRemoteDataSources {
  InstrumentRemoteDataSourcesImpl(String domain) : super(domain);

  @override
  Future<String> requestWomCreation(
      String url, Map<String, String> map, Map<String, String>? headers) async {
    final h = {HttpHeaders.contentTypeHeader: 'application/json'};
    if (headers != null) {
      h.addAll(headers);
    }
    final response = await http.post(
      Uri.parse(url),
      body: json.encode(map),
      headers: h,
    );
    if (response.statusCode == 200) {
      return response.body;
    }
    throw HttpHelper.handleError(url, response);
  }

  @override
  Future<bool> verifyWomCreation(String url, Map<String, dynamic> map) async {
    final response = await http.post(
      Uri.parse(url),
      body: json.encode(map),
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    if (response.statusCode == 200) {
      return true;
    }
    throw HttpHelper.handleError(url, response);
  }

  /*{
  "sourceId": "5e737c3a9036edb02d61ee34",
  "title": "Custom activity title",
  "users": [
    {
      "email": "lorenzck@live.com",
      "count": 10,
      "aim": "H",
      "location": {
        "latitude": 10,
        "longitude": 20
      },
      "timestamp": "2023-05-04T04:05:00"
    }
  ]
}*/

  @override
  Future requestBatchWomCreation({
    required int wom,
    required List<String> emails,
    required double lat,
    required double long,
    required String aim,
    required String title,
    required String sourceId,
    required String? username,
    required String? password,
  }) async {
    final headers = {'content-type': 'application/json'};

    if (username != null && password != null) {
      final bytes = utf8.encode('$username:$password');
      final auth = Base64Encoder().convert(bytes);
      headers['authorization'] = 'Basic $auth';
    }

    final timestamp = DateTime.now().toIso8601String();
    final url = 'https://$domain/api/v1/voucher/batch/generate';
    final map = <String, dynamic>{
      'sourceId': sourceId,
      'title': title,
      'users': emails
          .map((e) => <String, dynamic>{
                'email': e,
                'count': wom,
                'aim': aim,
                'location': <String, dynamic>{
                  'latitude': lat,
                  'longitude': long
                },
                'timestamp': timestamp
              })
          .toList(),
    };
    final response = await http.post(
      Uri.parse(url),
      body: json.encode(map),
      headers: headers,
    );
    if (response.statusCode == 200) {
      print(response.body);
      return true;
    }
    throw HttpHelper.handleError(url, response);
  }
}
