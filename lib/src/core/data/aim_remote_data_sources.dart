import 'dart:convert';

import 'package:dart_wom_connector/src/core/domain/entities/aim.dart';
import 'package:http/http.dart' as http;

class AimRemoteDataSources {
  final String domain;

  AimRemoteDataSources(this.domain);

  //TODO HTTP GET LAST CHANGE
  Future<List<Aim>?> checkUpdate() async {
    try {
      return getAims();
    } catch (ex) {
      return Future.value(null);
    }
  }

  Future<List<Aim>?> getAims() async {
    final url = 'http://$domain/api/v1/aims?format=flat';
    final resp = await http.get(
      Uri.parse(url),
      headers: {'content-type': 'application/json'},
    );
    if (resp.statusCode == 200) {
      final body = resp.body;
      final jsonResponse = json.decode(body);
      return jsonResponse.map<Aim>((a) => Aim.fromMap(a)).toList();
    }

    final Map<String, dynamic> jsonError = json.decode(resp.body);
    throw Exception(jsonError['title']);
  }
}
