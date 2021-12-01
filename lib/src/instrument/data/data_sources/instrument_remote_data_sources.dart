import 'dart:convert';
import 'dart:io';

import 'package:dart_wom_connector/src/core/data/client_remote_data_sources.dart';
import 'package:dart_wom_connector/src/core/error/exceptions.dart';
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
    final response = await http.post(
      Uri.parse(url),
      body: json.encode(map),
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    if (response.statusCode == 200) {
      return response.body;
    }
    var error = 'Unknown error';
    try {
      final jsonError = json.decode(response.body) as Map<String, dynamic>;
      error = jsonError['error'];
    } finally {
      throw ServerException(
          url: url, statusCode: response.statusCode, error: error);
    }
  }

  @override
  Future<bool> verifyWomCreation(String url, Map<String, dynamic> map) async {
    final response = await http.post(
      Uri.parse(url),
      body: json.encode(map),
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    if (response.statusCode == 200) {
      return true;
    }
    var error = 'Unknown error';
    try {
      final jsonError = json.decode(response.body) as Map<String, dynamic>;
      error = jsonError['error'];
    } finally {
      throw ServerException(
          url: url, statusCode: response.statusCode, error: error);
    }
  }
}
