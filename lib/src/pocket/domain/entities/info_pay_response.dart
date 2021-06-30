import 'package:dart_wom_connector/src/pos/domain/entities/simple_filter.dart';

class InfoPayResponse {
  static const String POS_ID = 'posId';
  static const String POS_NAME = 'posName';
  static const String AMOUNT = 'amount';
  static const String SIMPLE_FILTER = 'simpleFilter';

  String? posId;
  int? amount;
  String? posName;
  SimpleFilter? simpleFilter;

  InfoPayResponse.fromMap(Map<String, dynamic> map)
      : posId = map[POS_ID],
        amount = map[AMOUNT],
        posName = map[POS_NAME],
        simpleFilter = map[SIMPLE_FILTER] != null
            ? SimpleFilter.fromMap(map[SIMPLE_FILTER])
            : null;

  Map<String, dynamic> toMap() {
    final data = <String, dynamic>{};
    data[POS_ID] = posId.toString();
    data[AMOUNT] = amount;
    data[POS_NAME] = posName;
    data[SIMPLE_FILTER] = simpleFilter!.toMap();
    return data;
  }

  @override
  String toString() {
    return 'posId: $posId,amount: $amount,simplefilter: $simpleFilter';
  }
}
