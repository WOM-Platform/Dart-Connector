import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:uuid/uuid.dart';

import '../../../core/domain/entities/voucher_request.dart';

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
}