/*
import 'package:dart_wom_connector/src/core/data/base_mapper.dart';
import 'package:dart_wom_connector/src/pos/data/models/simple_filter_model.dart';

import 'bounds_mapper.dart';

class SimpleFilterJSONMapper with BaseMapper {
  final SimpleFilterModel simpleFilter;

  SimpleFilterJSONMapper(this.simpleFilter);

  @override
  Map<String, dynamic> toMap() {
    if (simpleFilter == null) return null;
    final map = <String, dynamic>{};
    final boundsMapper = BoundsMapper(simpleFilter.bounds);
    map[SimpleFilterModel.BOUNDS] = boundsMapper.toMap();
    map[SimpleFilterModel.MAX_AGE] = simpleFilter.maxAge;
    return map;
  }
}
*/
