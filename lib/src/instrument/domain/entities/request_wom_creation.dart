import 'package:dart_wom_connector/src/core/domain/entities/voucher.dart';
import 'package:uuid/uuid.dart';

class RequestWomCreation {

  final String sourceId;
  String? nonce;
  final List<Voucher> vouchers;

  RequestWomCreation(this.sourceId, this.vouchers){
    nonce = Uuid().v1();
  }

  Map<String, dynamic> toMap(){
    return <String, dynamic>{
      'SourceId': sourceId,
      'Nonce': nonce,
      'Vouchers': vouchers.map<Map<String,dynamic>>((Voucher v)=>v.toMap()).toList()
    };
  }
}