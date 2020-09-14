import 'dart:convert';
import 'package:dart_wom_connector/src/core/domain/entities/aim.dart';
import 'package:http/http.dart' as http;

class AimRemoteDataSources {
  final String domain;

  AimRemoteDataSources(this.domain);

  //TODO HTTP GET LAST CHANGE
  Future<List<Aim>> checkUpdate() async {
    print('AimApiProvider: checkUpdate()');
    try {
      return getAims();
    } catch (ex) {
      print(ex);
      return Future.value(null);
    }
  }

  Future<List<Aim>> getAims() async {
    print('AimApiProvider: getAims()');
    final url = 'http://wom.social/api/v1/aims?format=flat';
    final resp = await http.get(
      url,
      headers: {'content-type': 'application/json'},
    );
    print(resp.request);
    if (resp.statusCode == 200) {
      final body = resp.body;
      final jsonResponse = json.decode(body);
      return jsonResponse.map<Aim>((a) => Aim.fromMap(a)).toList();
    }

    final Map<String, dynamic> jsonError = json.decode(resp.body);
    throw Exception(jsonError['title']);
  }
}
