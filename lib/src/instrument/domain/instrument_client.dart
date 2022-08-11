import 'dart:convert';

import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:dart_wom_connector/src/core/domain/entities/instrument_user.dart';
import 'package:dart_wom_connector/src/core/domain/entities/user.dart';
import 'package:dart_wom_connector/src/core/domain/entities/user_type_enum.dart';
import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:dart_wom_connector/src/instrument/domain/entities/wom_creation_response.dart';
import 'package:dart_wom_connector/src/instrument/domain/repositories/instrument_repository.dart';

import '../../core/controller/client.dart';
import '../data/data_sources/instrument_remote_data_sources.dart';
import '../data/repositories/instrument_repository_impl.dart';
import 'entities/instrument.dart';
import 'entities/request_wom_creation.dart';

class InstrumentClient extends Client {
  final Instrument instrument;
  late InstrumentRepository instrumentRepository;

  InstrumentClient(
    this.instrument,
    String domain,
    String registryKey,
  ) : super(domain: domain, registryKey: registryKey) {
    instrumentRepository = InstrumentRepositoryImpl(
      InstrumentRemoteDataSourcesImpl(domain),
      instrument.privateKey,
      registryKey,
      instrument.id,
      domain,
      instrument.apiKey,
    );
  }

  Future<WomCreationResponse> requestVouchers(List<Voucher> vouchers) async {
    final request = RequestWomCreation(instrument.id, vouchers);
    return instrumentRepository.requestWomCreation(request);
  }

  Future<bool> verifyRequest(
      WomCreationResponse requestWomCreationResponse) async {
    return instrumentRepository.verifyWomCreation(requestWomCreationResponse);
  }

  static Future<InstrumentUser> authenticate(
      String username, String password, String domain) async {
    final map = await HttpHelper.authenticate(
        username, password, domain, UserType.Instrument);
    final name = map[User.dbName];
    final surname = map[User.dbSurname];
    final email = map[User.dbEmail];
    final instruments = map['sources'] != null
        ? List<Instrument>.from(
            map['sources'].map<Instrument>((m) => Instrument.fromJson(m)))
        : <Instrument>[];
    return InstrumentUser(
        instruments: instruments, name: name, surname: surname, email: email);
  }

  static Future<String> createNewApiKey(
    String username,
    String password,
    String domain,
    String selector,
    String sourceId,
  ) async {
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
