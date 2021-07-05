import 'dart:convert';
import 'dart:io';

import 'package:dart_wom_connector/src/core/data/client_remote_data_sources.dart';
import 'package:http/http.dart' as http;

abstract class InstrumentRemoteDataSources extends WomClientRemoteDataSources {
  InstrumentRemoteDataSources(String domain) : super(domain);

  Future<String> requestWomCreation(String url, Map<String, dynamic> map);
  Future<bool> verifyWomCreation(String url, Map<String, dynamic> map);
}

class InstrumentRemoteDataSourcesImpl extends InstrumentRemoteDataSources {
  InstrumentRemoteDataSourcesImpl(String domain) : super(domain);

  @override
  Future<String> requestWomCreation(
      String url, Map<String, dynamic> map) async {
    final resp = await http.post(
      Uri.parse(url),
      body: json.encode(map),
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    if (resp.statusCode == 200) {
      return resp.body;
    }
    final jsonError = json.decode(resp.body) as Map<String, dynamic>;
    throw Exception(jsonError['title']);
  }

  @override
  Future<bool> verifyWomCreation(String url, Map<String, dynamic> map) async {
    final resp = await http.post(
      Uri.parse(url),
      body: json.encode(map),
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    if (resp.statusCode == 200) {
      return true;
    }
    final jsonError = json.decode(resp.body) as Map<String, dynamic>;
    throw Exception(jsonError['title']);
  }
}
