import 'dart:convert';

import 'package:dart_wom_connector/src/core/data/http_helper.dart';

abstract class PocketRemoteDataSources {
  Future<Map<String, dynamic>> redeemVouchers(Map<String, String> map);
  Future<Map<String, dynamic>> getInfoPayments(Map<String, String> map);
  Future<Map<String, dynamic>> confirmPayments(Map<String, String> map);
}

class PocketRemoteDataSourcesImpl extends PocketRemoteDataSources {
  final String domain;

  PocketRemoteDataSourcesImpl(this.domain);
  @override
  Future<Map<String, dynamic>> redeemVouchers(Map<String, String> map) async {
    assert(domain != null);
    assert(map != null);
    final responseBody = await HttpHelper.genericHttpPost(
        'https://$domain/api/v1/voucher/redeem', map);
    return json.decode(responseBody);

/*    if ((await HttpHelper.genericHttpPost(
            'https://$domain/api/v1/voucher/redeem', map)) !=
        null) {
      return true;
    }
    throw RedeemVoucherExcpetion();*/
  }

  @override
  Future<Map<String, dynamic>> getInfoPayments(Map<String, String> map) async {
    final responseBody = await HttpHelper.genericHttpPost(
        'https://$domain/api/v1/payment/info', map);
    return json.decode(responseBody);
  }

  @override
  Future<Map<String, dynamic>> confirmPayments(Map<String, String> map) async {
    final responseBody = await HttpHelper.genericHttpPost(
        'https://$domain/api/v1/payment/confirm', map);
    return json.decode(responseBody);
  }
}
