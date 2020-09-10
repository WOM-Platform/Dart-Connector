/*
import 'package:dart_wom_connector/src/pos/domain/entities/simple_filter.dart';

import 'bounds_model.dart';

class SimpleFilterModel extends SimpleFilter {
  static String AIM = 'Aim';
  static String BOUNDS = 'Bounds';
  static String MAX_AGE = 'MaxAge';

  SimpleFilterModel({String aimCode, BoundsModel bounds, int maxAge})
      : super(aimCode: aimCode, bounds: bounds, maxAge: maxAge);

  factory SimpleFilterModel.fromMap(Map<String, dynamic> map) {
    return SimpleFilterModel(
        aimCode: map[AIM],
        bounds: map[BOUNDS] != null ? BoundsModel.fromMap(map[BOUNDS]) : null,
        maxAge: map[MAX_AGE]);
  }
}
*/
