import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../../../../dart_wom_connector.dart';

abstract class PocketRemoteDataSources {
  Future<Map<String, dynamic>?> redeemVouchers(Map<String, String> map);

  Future<Map<String, dynamic>?> getInfoPayments(Map<String, String> map);

  Future<Map<String, dynamic>?> confirmPayments(Map<String, String> map);

  Future<Map<String, dynamic>> createNewMigration(
      List<int> bytes, String password);

  Future<Map<String, dynamic>> getInfoAboutMigration(
      String guid, String password);

  Future<Uint8List> retrieveMigrationPayload(String guid, String password);
}

class PocketRemoteDataSourcesImpl extends PocketRemoteDataSources {
  final String domain;

  PocketRemoteDataSourcesImpl(this.domain);

  @override
  Future<Map<String, dynamic>> createNewMigration(
      List<int> bytes, String password) async {
    final uri = Uri.parse('http://$domain/api/v1/migration');
    final request = http.MultipartRequest('POST', uri)
      ..fields['password'] = password
      ..files.add(
        http.MultipartFile.fromBytes(
          'payload',
          bytes,
          filename: 'woms',
          contentType: MediaType('application', 'octet-stream'),
        ),
      );
    var response = await request.send();
    if (response.statusCode != 200) {
      print(response.statusCode);
      print(response);
      throw Exception('Error to send file');
    }
    final responseBody = await response.stream.bytesToString();
    return json.decode(responseBody);
  }

  @override
  Future<Map<String, dynamic>?> redeemVouchers(Map<String, String> map) async {
    final responseBody = await HttpHelper.genericHttpPost(
        'http://$domain/api/v1/voucher/redeem', map);
    return json.decode(responseBody);
  }

  @override
  Future<Map<String, dynamic>> getInfoPayments(Map<String, String> map) async {
    final responseBody = await HttpHelper.genericHttpPost(
        'http://$domain/api/v1/payment/info', map);
    return json.decode(responseBody);
  }

  @override
  Future<Map<String, dynamic>> confirmPayments(Map<String, String> map) async {
    final responseBody = await HttpHelper.genericHttpPost(
        'http://$domain/api/v1/payment/confirm', map);
    return json.decode(responseBody);
  }

  @override
  Future<Map<String, dynamic>> getInfoAboutMigration(
      String guid, String password) async {
    final responseBody = await HttpHelper.genericHttpPost(
      'http://$domain/api/v1/migration/$guid/info',
      {'password': password},
    );
    return json.decode(responseBody);
  }

  @override
  Future<Uint8List> retrieveMigrationPayload(
      String guid, String password) async {
    final url = 'http://$domain/api/v1/migration/$guid/retrieve';
    final response = await http.post(
      Uri.parse(url),
      body: json.encode({'password': password}),
      headers: {'content-type': 'application/json'},
    );
    print('$url => status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      return response.bodyBytes;
    }
    String? error;
    try {
      final jsonError = json.decode(response.body) as Map<String, dynamic>;
      error = jsonError['error'];
    } finally {
      throw ServerException(url: url, error: error ?? 'unknown-error', type: '');
    }
    // final responseBody = await HttpHelper.genericHttpPost(
    //     'http://$domain/api/v1/migration/$guid/retrieve',
    //     {'password': password});
    // print(responseBody);
    // return responseBody as List<int>;
  }
}
