import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

abstract class InstrumentRemoteDataSources {
  Future<String> requestWomCreation(String url, Map<String, dynamic> map);
  Future<bool> verifyWomCreation(String url, Map<String, dynamic> map);
}

class InstrumentRemoteDataSourcesImpl extends InstrumentRemoteDataSources {
  @override
  Future<String> requestWomCreation(
      String url, Map<String, dynamic> map) async {
    final resp = await http.post(
      url,
      body: json.encode(map),
      headers: {HttpHeaders.contentTypeHeader: "application/json"},
    );
    if (resp.statusCode == 200) {
      print(resp.body);
      return resp.body;
    }
    final jsonError = json.decode(resp.body) as Map<String, dynamic>;
    throw Exception(jsonError['title']);
  }

  @override
  Future<bool> verifyWomCreation(String url, Map<String, dynamic> map) async {
    final resp = await http.post(
      url,
      body: json.encode(map),
      headers: {HttpHeaders.contentTypeHeader: "application/json"},
    );
    if (resp.statusCode == 200) {
      return true;
    }
    final jsonError = json.decode(resp.body) as Map<String, dynamic>;
    throw Exception(jsonError['title']);
  }
}
