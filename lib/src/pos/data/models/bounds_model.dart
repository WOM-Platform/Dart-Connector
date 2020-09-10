

import 'package:dart_wom_connector/src/pos/domain/entities/bounds.dart';

class BoundsModel extends Bounds {
  static String LEFT_TOP = 'leftTop';
  static String RIGHT_BOT = 'rightBottom';

  BoundsModel({List<double> leftTop, List<double> rightBottom})
      : super(leftTop: leftTop, rightBottom: rightBottom);

  factory BoundsModel.fromMap(Map<String, dynamic> map) {
    return BoundsModel(
        leftTop: map[LEFT_TOP].cast<double>(),
        rightBottom: map[RIGHT_BOT].cast<double>());
  }
}
