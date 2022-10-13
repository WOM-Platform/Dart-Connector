import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_map.freezed.dart';

@freezed
class POSMap with _$POSMap {
  const factory POSMap({
    required String id,
    required String name,
    required Position position,
    String? url,
  }) = _POSMap;
}

@freezed
class Position with _$Position {
  const factory Position({
    required double latitude,
    required double longitude,
  }) = _Position;
}

/*extension POSMapResponseX on POSMapResponse {
  PointOfSale toDomain() {
    return PointOfSale(
      id: id,
      url: url,
      name: name,
      latitude: latitude,
      longitude: longitude,
      privateKey: privateKey,
      isActive: isActive,
    );
  }
}*/
