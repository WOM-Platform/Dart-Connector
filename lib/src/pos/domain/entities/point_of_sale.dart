import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_of_sale.freezed.dart';

@freezed
class PointOfSale with _$PointOfSale {
  const factory PointOfSale({
    required String privateKey,
    required String id,
    required String name,
    required bool isActive,
    double? latitude,
    double? longitude,
    String? url,
  }) = _PointOfSale;
}

/*class PointOfSale {
  static String dbPrivateKey = 'privateKey';
  static String dbId = 'id';
  static String dbUrl = 'url';
  static String dbName = 'name';
  static String dbCoordinates = 'coordinates';

  final String privateKey;
  final String id;
  final String name;
  final String? url;
  final List<double> coordinates;

  PointOfSale(this.id, this.name, this.url, this.privateKey, this.coordinates);

  factory PointOfSale.fromMap(Map<String, dynamic> map){
    print(map[dbName]);¡
    return PointOfSale(
      map[dbId].toString(),
      map[dbName],
      map[dbUrl],
      map[dbPrivateKey],
      map[dbCoordinates],
    );
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map[dbName] = name;
    map[dbId] = id;
    map[dbUrl] = url;
    map[dbPrivateKey] = privateKey;
    return map;
  }
}*/
