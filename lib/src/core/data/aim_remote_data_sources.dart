import 'dart:convert';

import 'package:dart_wom_connector/src/core/data/dto/aim.dart';
import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:dart_wom_connector/src/core/domain/entities/aim.dart';
import 'package:http/http.dart' as http;

class AimRemoteDataSources {
  final String domain;

  AimRemoteDataSources(this.domain);

  //TODO HTTP GET LAST CHANGE
  Future<List<Aim>> checkUpdate() async {
    try {
      return getAims();
    } catch (ex) {
      rethrow;
    }
  }

  Future<List<Aim>> getAims() async {
    return await _getAims();
  }

  Future<List<Aim>> getNestedAims() async {
    return await _getAims(nested: true);
  }

  Future<List<Aim>> _getAims({bool nested = false}) async {
    final url = 'https://$domain/api/v2/aims${nested ? '/nested' : ''}';
    final response = await http.get(
      Uri.parse(url),
      headers: {'content-type': 'application/json'},
    );
    if (response.statusCode == 200) {
      final body = response.body;
      final jsonResponse = json.decode(body);
      return AimResponse.fromJson(jsonResponse)
          .aims
          .map<Aim>((e) => e.toDomain())
          .toList();
    }

    throw HttpHelper.handleError(url, response);
  }
}
