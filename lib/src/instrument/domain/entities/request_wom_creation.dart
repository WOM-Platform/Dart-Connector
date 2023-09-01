import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/entities/voucher_request.dart';

part 'request_wom_creation.freezed.dart';

part 'request_wom_creation.g.dart';

@freezed
class RequestWomCreation with _$RequestWomCreation {
  const factory RequestWomCreation({
    required String sourceId,
    required String nonce,
    required List<VoucherRequest> vouchers,
  }) = _RequestWomCreation;

  factory RequestWomCreation.fromJson(Map<String, dynamic> json) =>
      _$RequestWomCreationFromJson(json);
}

/*

class RequestWomCreation {

  final String sourceId;
  late String nonce;
  final List<VoucherRequest> vouchers;

  RequestWomCreation(this.sourceId, this.vouchers){
    nonce = Uuid().v1();
  }

  Map<String, dynamic> toMap(){
    return <String, dynamic>{
      'SourceId': sourceId,
      'Nonce': nonce,
      'Vouchers': vouchers.map<Map<String,dynamic>>((VoucherRequest v)=>v.toJson()).toList()
    };
  }
}*/
