
import 'package:dart_wom_connector/src/pos/data/models/bounds_model.dart';

import '../../../core/data/base_mapper.dart';

class BoundsMapper with BaseMapper {
  final BoundsModel bounds;

  BoundsMapper(this.bounds);

  @override
  Map<String, dynamic> toMap() {
    if(bounds == null) return null;
    final data = <String, dynamic>{};
    data[BoundsModel.LEFT_TOP] = bounds.leftTop;
    data[BoundsModel.RIGHT_BOT] = bounds.rightBottom;
    return data;
  }
}
