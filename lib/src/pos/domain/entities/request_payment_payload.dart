
import 'package:dart_wom_connector/src/core/utils/utils.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/simple_filter.dart';
import 'package:meta/meta.dart';

class RequestPaymentPayload {

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

  final int amount;
  final String pocketAckUrl;
  final String posId;
  final String password;
  final SimpleFilter simpleFilter;
  final String posAckUrl;
  final bool persistent;
  String nonce;

  RequestPaymentPayload({
    @required this.amount,
    @required this.pocketAckUrl,
    @required this.posId,
    this.nonce,
    this.password,
    this.simpleFilter,
    this.posAckUrl,
    this.persistent = false,
  }) {
    assert(posId != null);
    assert(amount > 0);
    assert(pocketAckUrl.isNotEmpty);
    nonce ??= Utils.generateGUID();
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map[POS_ID] = posId;
    map[NONCE] = nonce;
    map[PASSWORD] = password;
    map[AMOUNT] = amount;
    map[SIMPLE_FILTER] = simpleFilter?.toMap();
    map[POS_ACK_URL] = posAckUrl;
    map[POCKET_ACK_URL] = pocketAckUrl;
    map[PERSISTENT] = persistent;
    return map;
  }
}
