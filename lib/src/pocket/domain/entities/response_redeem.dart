import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_redeem.freezed.dart';
part 'response_redeem.g.dart';

@freezed
class ResponseRedeem with _$ResponseRedeem {
  const factory ResponseRedeem({
    required List<Voucher> vouchers,
    required String sourceName,
    required String sourceId,
  }) = _ResponseRedeem;

  factory ResponseRedeem.fromJson(Map<String, dynamic> json) =>
      _$ResponseRedeemFromJson(json);
}
/*
class ResponseRedeem {
  static const String VOUCHERS = 'vouchers';
  static const String SOURCE_NAME = 'sourceName';
  static const String SOURCE_ID = 'sourceId';

  List<Voucher>? vouchers;
  String? sourceName;
  String? sourceId;

  ResponseRedeem({this.vouchers, this.sourceName});

  ResponseRedeem.fromJson(Map<String, dynamic> json) {
    if (json[VOUCHERS] != null) {
      vouchers = <Voucher>[];
      json[VOUCHERS].forEach((v) {
        vouchers!.add(Voucher.fromJson(v));
      });
      sourceName = json[SOURCE_NAME] ?? '';
      sourceId = json[SOURCE_ID].toString();
    }
  }

//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    if (this.woms != null) {
//      data[VOUCHERS] = this.woms.map((v) => v.toJson()).toList();
//      data[SOURCE_NAME] = this.sourceName;
//      data[SOURCE_ID] = this.sourceId;
//    }
//    return data;
//  }
}*/
