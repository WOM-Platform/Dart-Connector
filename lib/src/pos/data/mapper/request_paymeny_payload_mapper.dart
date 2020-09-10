/*

import 'package:dart_wom_connector/src/pos/data/mapper/simple_filter_mapper.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/request_payment_payload.dart';

import '../../../core/data/base_mapper.dart';

class RequestPaymentPayloadMapper with BaseMapper {

  static String TABLE = 'paymentRequest';
  static String ID = 'id';
  static String DEEP_LINK = 'deepLink';
  static String AIM_CODE = 'aim_code';
  static String AIM_NAME = 'aim_name';
  static String AMOUNT = 'amount';
  static String STATUS = 'status';
  static String NAME = 'name';
  static String PASSWORD = 'password';
  static String DATE = 'date';
  static String URL = 'url';
  static String POS_ID = 'posId';
  static String LATITUDE = 'longitude';
  static String LONGITUDE = 'latitude';
  static String NONCE = 'nonce';
  static String VOUCHERS = 'vouchers';
  static String PAYLOAD = 'payload';
  static String SIMPLE_FILTER = 'simpleFilter';
  static String POCKET_ACK_URL = 'pocketAckUrl';
  static String POS_ACK_URL = 'posAckUrl';
  static String PERSISTENT = 'persistent';

  final RequestPaymentPayload requestPaymentPayload;

  RequestPaymentPayloadMapper(this.requestPaymentPayload);

  @override
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final simpleFilterJSONMapper = SimpleFilterJSONMapper(requestPaymentPayload.simpleFilter);
    map[POS_ID] = requestPaymentPayload.posId;
    map[NONCE] = requestPaymentPayload.nonce;
    map[PASSWORD] = requestPaymentPayload.password;
    map[AMOUNT] = requestPaymentPayload.amount;
    map[SIMPLE_FILTER] = simpleFilterJSONMapper.toMap();
    map[POS_ACK_URL] = requestPaymentPayload.posAckUrl;
    map[POCKET_ACK_URL] = requestPaymentPayload.pocketAckUrl;
    map[PERSISTENT] = requestPaymentPayload.persistent;
    return map;
  }


}
*/
