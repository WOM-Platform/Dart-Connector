import 'dart:convert';

import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:dart_wom_connector/src/core/domain/entities/user.dart';
import 'package:dart_wom_connector/src/core/error/exceptions.dart';
import 'package:dart_wom_connector/src/pos/data/models/payment_register_payload.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/merchant.dart';

import '../../../../dart_wom_connector.dart';

abstract class PointOfSaleRemoteDataSources {
  final String domain;

  PointOfSaleRemoteDataSources(this.domain);

  Future<String> registerPayment(
      String path, PaymentRegisterPayload paymentRegisterPayload);

  Future<bool> verifyPayment(String path, Map<String, String> map);

  Future<User> authenticate(String username, String password);
}

class PointOfSaleRemoteDataSourcesImpl extends PointOfSaleRemoteDataSources {
  PointOfSaleRemoteDataSourcesImpl(String baseUrl) : super(baseUrl);

  @override
  Future<String> registerPayment(
      String path, PaymentRegisterPayload paymentRegisterPayload) async {
    return await HttpHelper.genericHttpPost(
        'https://$domain/api/v1/$path', paymentRegisterPayload.toMap());
  }

  @override
  Future<bool> verifyPayment(String path, Map<String, String> map) async {
    if ((await HttpHelper.genericHttpPost(
            'https://$domain/api/v1/$path', map)) !=
        null) {
      return true;
    }
    throw VerifyPaymentException();
  }

  @override
  Future<User> authenticate(String username, String password) async {
    final bytes = utf8.encode('$username:$password');
    final base64String = Base64Encoder().convert(bytes);
    final body = await HttpHelper.authenticate(
        'https://$domain/api/v2/auth/merchant', base64String);
    final map = json.decode(body);
    final name = map[User.dbName];
    final surname = map[User.dbSurname];
    final email = map[User.dbEmail];
    final merchants = map['merchants'] != null
        ? List<Merchant>.from(
            map['merchants'].map<Merchant>((m) => Merchant.fromMap(m)))
        : <Merchant>[];
    return User(
        name: name, surname: surname, email: email, merchants: merchants);
  }
}
