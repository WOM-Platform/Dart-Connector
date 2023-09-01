import 'dart:convert';

import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:dart_wom_connector/src/core/domain/entities/instrument_user.dart';
import 'package:dart_wom_connector/src/core/domain/entities/user.dart';
import 'package:dart_wom_connector/src/core/domain/entities/user_type_enum.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/wom_creation_response.dart';
import 'package:dart_wom_connector/src/instrument/domain/repositories/instrument_repository.dart';
import 'package:uuid/uuid.dart';

import '../../core/controller/client.dart';
import '../../core/domain/entities/auth_response.dart';
import '../../core/domain/entities/voucher_request.dart';
import '../data/data_sources/instrument_remote_data_sources.dart';
import '../data/repositories/instrument_repository_impl.dart';
import 'entities/instrument.dart';
import 'entities/request_wom_creation.dart';

class InstrumentClient extends WomClient {
  final Instrument instrument;
  late InstrumentRepository instrumentRepository;

  InstrumentClient(this.instrument,
      String domain,
      String registryKey,) : super(domain: domain, registryKey: registryKey) {
    instrumentRepository = InstrumentRepositoryImpl(
      InstrumentRemoteDataSourcesImpl(domain),
      instrument.privateKey,
      registryKey,
      instrument.id,
      domain,
      instrument.apiKey,
    );
  }

  Future<WomCreationResponse> requestVouchers(
      List<VoucherRequest> vouchers) async {
    final request = RequestWomCreation(
      nonce: Uuid().v1(),
      sourceId: instrument.id,
      vouchers: vouchers,
    );
    return instrumentRepository.requestWomCreation(request);
  }

  Future<bool> verifyRequest(
      WomCreationResponse requestWomCreationResponse) async {
    return instrumentRepository.verifyWomCreation(requestWomCreationResponse);
  }

  Future requestBatchWomCreation({
    required int wom,
    required List<String> emails,
    required double lat,
    required double long,
    required String aim,
    required String title,
    required String username,
    required String password,
  }) {
    return instrumentRepository.requestBatchWomCreation(
      wom: wom,
      emails: emails,
      lat: lat,
      long: long,
      aim: aim,
      title: title,
      sourceId: instrument.id,
      username: username,
      password: password,
    );
  }

  static Future<AuthResponse> authenticate({
    required String username,
    required String password,
    required String clientName,
    required String domain,
  }) async {
    return WomClient.authenticateWihJWT(
      username,
      password,
      clientName,
      domain,
      UserType.Instrument,
    );
  }

/*  static Future<InstrumentUser> authenticate(
      String token, String domain) async {
    final map = await HttpHelper.getUser(token, domain);
    final name = map[User.dbName];
    final surname = map[User.dbSurname];
    final email = map[User.dbEmail];
    final verified = map[User.dbEmail];
    final instruments = map['sources'] != null
        ? List<Instrument>.from(
            map['sources'].map<Instrument>((m) => Instrument.fromJson(m)))
        : <Instrument>[];
    return InstrumentUser(
      instruments: instruments,
      name: name,
      surname: surname,
      email: email,
      verified: verified,
    );
  }*/

  // static Future<InstrumentUser> authenticateV2(
  //     String token, String domain) async {
  //   final map =
  //       await HttpHelper.authenticateV2(token, domain, UserType.Instrument);
  //   final name = map[User.dbName];
  //   final surname = map[User.dbSurname];
  //   final email = map[User.dbEmail];
  //   final verified = map[User.dbVerified];
  //   final instruments = map['sources'] != null
  //       ? List<Instrument>.from(
  //           map['sources'].map<Instrument>((m) => Instrument.fromJson(m)))
  //       : <Instrument>[];
  //   return InstrumentUser(
  //     instruments: instruments,
  //     name: name,
  //     surname: surname,
  //     email: email,
  //     verified: verified,
  //   );
  // }

  static Future<InstrumentUser> getUser(String token, String domain) async {
    final map = await HttpHelper.getUser(token, domain);
    final name = map[User.dbName];
    final surname = map[User.dbSurname];
    final email = map[User.dbEmail];
    final verified = map[User.dbVerified];
    final instruments = map['sources'] != null
        ? List<Instrument>.from(
        map['sources'].map<Instrument>((m) => Instrument.fromJson(m)))
        : <Instrument>[];
    return InstrumentUser(
      instruments: instruments,
      name: name,
      surname: surname,
      email: email,
      verified: verified,
    );
  }

  static Future<String> createNewApiKey(String username,
      String password,
      String domain,
      String selector,
      String sourceId,) async {
    final responseBody = await HttpHelper.genericHttpPost(
      'https://$domain/api/v2/auth/source/$sourceId/apiKey?selector=$selector',
      <String, dynamic>{},
      username: username,
      password: password,
    );

    final map = Map.from(json.decode(responseBody));
    return map['apiKey'] as String;
  }
}
