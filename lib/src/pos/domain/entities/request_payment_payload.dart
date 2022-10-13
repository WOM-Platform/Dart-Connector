import 'package:dart_wom_connector/src/core/utils/utils.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/simple_filter.dart';
import 'package:meta/meta.dart';

class RequestPaymentPayload {
  final int amount;
  final String? pocketAckUrl;
  final String posId;
  final SimpleFilter? simpleFilter;
  final String? posAckUrl;
  final bool persistent;
  String? nonce;

  RequestPaymentPayload({
    required this.amount,
    this.pocketAckUrl,
    required this.posId,
    this.simpleFilter,
    this.posAckUrl,
    this.persistent = false,
  }) {
    nonce ??= CoreUtils.generateGUID();
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['posId'] = posId;
    map['nonce'] = nonce;
    map['amount'] = amount;
    map['simpleFilter'] = simpleFilter?.toMap();
    map['posAckUrl'] = posAckUrl;
    map['pocketAckUrl'] = pocketAckUrl ?? '';
    map['persistent'] = persistent;
    return map;
  }
}
