import 'dart:convert';
import 'dart:typed_data';
import 'package:http_parser/http_parser.dart';
import 'package:dart_wom_connector/src/core/data/client_remote_data_sources.dart';
import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:http/http.dart' as http;
import 'package:dart_wom_connector/src/pos/data/dto/payment_register_payload.dart';

import '../../../../dart_wom_connector.dart';

abstract class PointOfSaleRemoteDataSources extends WomClientRemoteDataSources {
  PointOfSaleRemoteDataSources(String domain) : super(domain);

  Future<String> registerPayment(
      String path, PaymentRegisterPayload paymentRegisterPayload);

  Future<bool> verifyPayment(String path, Map<String, String> map);

  Future<List<Offer>> getOffers(String posId, String token);

  Future<String> createOffer(
    String posId,
    CreateOfferRequestDTO request,
    String token,
  );

  Future updateCover(
    String posId,
    Uint8List bytes,
    String token,
  );

  Future updatePos(PointOfSale pos, String token);

  Future deleteOffer(
    String posId,
    String offerId,
    String token,
  );

  Future<AnonymousPos> getAnonymousPos();

  Future<void> deleteAccount(String userId, String token);
}

class PointOfSaleRemoteDataSourcesImpl extends PointOfSaleRemoteDataSources {
  PointOfSaleRemoteDataSourcesImpl(String baseUrl) : super(baseUrl);

  @override
  Future<String> registerPayment(
      String path, PaymentRegisterPayload paymentRegisterPayload) async {
    return await HttpHelper.genericHttpPost(
        'https://$domain/api/v1/$path', paymentRegisterPayload.toJson());
  }

  @override
  Future<bool> verifyPayment(String path, Map<String, String> map) async {
    try {
      await HttpHelper.genericHttpPost('https://$domain/api/v1/$path', map);
      return true;
    } catch (ex) {
      throw VerifyPaymentException();
    }
  }

// @override
// Future<POSUser> authenticate(String username, String password) async {
//   final bytes = utf8.encode('$username:$password');
//   final base64String = Base64Encoder().convert(bytes);
//   final body = await HttpHelper.authenticate(
//       'https://$domain/api/v2/auth/merchant', base64String);
//   final map = json.decode(body);
//   final name = map[User.dbName];
//   final surname = map[User.dbSurname];
//   final email = map[User.dbEmail];
//   final merchants = map['merchants'] != null
//       ? List<Merchant>.from(
//           map['merchants'].map<Merchant>((m) => Merchant.fromMap(m)))
//       : <Merchant>[];
//   return POSUser(
//       name: name, surname: surname, email: email, merchants: merchants);
// }

  @override
  Future<List<Offer>> getOffers(String posId, String token) async {
    final url = 'https://$domain/api/v1/pos/$posId/offers';
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'content-type': 'application/json',
        'authorization': 'Beared $token'
      },
    );
    print('$url => status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);
      final list = List.from(data);
      return list.map((e) => Offer.fromJson(e)).toList();
    }
    throw HttpHelper.handleError(url, response);
  }

  @override
  Future<String> createOffer(
    String posId,
    CreateOfferRequestDTO request,
    String token
  ) async {
    final url = 'https://$domain/api/v1/pos/$posId/offers';
    return await HttpHelper.genericHttpPostWithToken(
      url,
      request.toJson(),
      token,
    );
  }

  @override
  Future deleteOffer(
    String posId,
    String offerId,
    String token,
  ) async {
    final url = 'https://$domain/api/v1/pos/$posId/offers/$offerId';

    final response = await http.delete(
      Uri.parse(url),
      headers: {
        'content-type': 'application/json',
        'authorization': 'Bearer $token'
      },
    );
    print('DEL $url => status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw HttpHelper.handleError(url, response);
  }

  @override
  Future updateCover(
    String posId,
    Uint8List bytes,
    String token,
  ) async {
    final url = 'https://$domain/api/v1/pos/$posId/cover';

    final uri = Uri.parse(url);
    var request = http.MultipartRequest('POST', uri);
    request.headers['authorization'] = 'Bearer $token';
    final httpImage = http.MultipartFile.fromBytes(
      'image',
      bytes,
      filename: 'image.jpg',
      contentType: MediaType('image', 'jpeg'),
    );
    request.files.add(httpImage);
    final response = await request.send();
    print('MULTIPART $url => status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      // print(response.body);
      return;
    }
    // throw HttpHelper.handleError(url, response.stream.last);
  }

  @override
  Future<AnonymousPos> getAnonymousPos() async {
    final map = await HttpHelper.getAnonymousPos(domain);
    return AnonymousPos.fromJson(map);
  }

  @override
  Future updatePos(
    PointOfSale pos,
    String token,
  ) async {
    final url = 'https://$domain/api/v1/pos/${pos.id}';
    final map = {
      'name': pos.name,
      'description': pos.description,
      'latitude': pos.latitude,
      'longitude': pos.longitude,
      'url': pos.url,
      'isActive': pos.isActive,
    };
    map.removeWhere((key, value) => value == null);
    final response = await http.put(
      Uri.parse(url),
      body: jsonEncode(map),
      headers: {
        'content-type': 'application/json',
        'authorization': 'Bearer $token'
      },
    );
    print('PUT $url => status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw HttpHelper.handleError(url, response);
  }

  @override
  Future<void> deleteAccount(String userId, String token) async {
    final url = 'https://$domain/api/v1/user/$userId';

    final response = await http.delete(
      Uri.parse(url),
      headers: {
        'content-type': 'application/json',
        'authorization': 'Bearer $token'
      },
    );
    print('DEL $url => status code: ${response.statusCode}');
    if (response.statusCode != 200) {
      throw HttpHelper.handleError(url, response);
    }
  }
}
