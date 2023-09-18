import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/auth_exchange.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/create_exchange_request.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/exchange_response.dart';
import 'package:dart_wom_connector/src/pocket/domain/entities/offer.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../dart_wom_connector.dart';

part 'pocket_remote_data_sources.g.dart';

abstract class PocketRemoteDataSources {
  Future<Map<String, dynamic>?> redeemVouchers(Map<String, String> map);

  Future<Map<String, dynamic>?> getInfoPayments(Map<String, String> map);

  Future<Map<String, dynamic>?> confirmPayments(Map<String, String> map);

  Future<Map<String, dynamic>> createNewMigration(
      List<int> bytes, String password);

  Future<Map<String, dynamic>> getInfoAboutMigration(
      String guid, String password);

  Future<Uint8List> retrieveMigrationPayload(String guid, String password);

  Future<void> completeMigration(String guid, String password);

  Future<List<OfferPOS>> getOffers({
    required double latitude,
    required double longitude,
  });

  Future<List<OfferPOS>> getOffersByBox({
    required double lly,
    required double llx,
    required double ury,
    required double urx,
  });

  Future<OfferPagination> getVirtualPos(int page, {int pageSize = 10});
}

class PocketRemoteDataSourcesImpl extends PocketRemoteDataSources {
  final String domain;

  PocketRemoteDataSourcesImpl(this.domain);

  @override
  Future<Map<String, dynamic>> createNewMigration(
      List<int> bytes, String password) async {
    final url = 'https://$domain/api/v1/migration';
    final uri = Uri.parse(url);
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
        'https://$domain/api/v1/voucher/redeem', map);
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
      'https://$domain/api/v1/migration/$guid/info',
      {'password': password},
    );
    return json.decode(responseBody);
  }

  @override
  Future<Uint8List> retrieveMigrationPayload(
      String guid, String password) async {
    final url = 'https://$domain/api/v1/migration/$guid/retrieve';
    final response = await http.post(
      Uri.parse(url),
      body: json.encode({'password': password}),
      headers: {'content-type': 'application/json'},
    );
    print('$url => status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      return response.bodyBytes;
    }
    throw HttpHelper.handleError(url, response);
  }

  @override
  Future<void> completeMigration(String guid, String password) async {
    final url = 'https://$domain/api/v1/migration/$guid/complete';
    final response = await http.post(
      Uri.parse(url),
      body: json.encode({'password': password}),
      headers: {'content-type': 'application/json'},
    );
    print('$url => status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      return;
    }
    throw HttpHelper.handleError(url, response);
  }

  @override
  Future<List<OfferPOS>> getOffers(
      {required double latitude, required double longitude}) async {
    final url =
        'https://$domain/api/v1/offer/search/distance?latitude=$latitude&longitude=$longitude&range=30';
    final response = await http.post(
      Uri.parse(url),
      headers: {'content-type': 'application/json'},
    );
    print('$url => status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);
      final list = List.from(data);
      return list.map((e) => OfferPOS.fromJson(e)).toList();
    }
    throw HttpHelper.handleError(url, response);
  }

  @override
  Future<List<OfferPOS>> getOffersByBox({
    required double lly,
    required double llx,
    required double ury,
    required double urx,
  }) async {
    final url =
        'https://$domain/api/v1/offer/search/box?lly=$lly&llx=$llx&ury=$ury&urx=$urx';
    final response = await http.post(
      Uri.parse(url),
      headers: {'content-type': 'application/json'},
    );
    print('$url => status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);
      final list = List.from(data);
      return list.map((e) => OfferPOS.fromJson(e)).toList();
    }
    throw HttpHelper.handleError(url, response);
  }

  @override
  Future<OfferPagination> getVirtualPos(int page, {int pageSize = 10}) async {
    final url =
        'https://$domain/api/v1/pos/virtual?page=$page&=pageSize=$pageSize';
    final response = await http.get(
      Uri.parse(url),
      headers: {'content-type': 'application/json'},
    );
    print('$url => status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      print(response.body);
      final data = Map<String, dynamic>.from(jsonDecode(response.body));
      return OfferPagination.fromJson(data);
    }
    throw HttpHelper.handleError(url, response);
  }
}

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/api/v2/auth/exchange')
  Future<AuthExchangeResponse> getSourceKey();

  @POST('/api/v1/transfer/request')
  Future<ExchangeResponse> createExchangeRequest(
      @Body() CreateExchangeRequest request);
}
