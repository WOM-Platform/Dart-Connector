class PointOfSale {
  static String dbPrivateKey = 'privateKey';
  static String dbId = 'id';
  static String dbUrl = 'url';
  static String dbName = 'name';
  static String dbCoordinates = 'coordinates';

  final String? privateKey;
  final String id;
  final String? name;
  final String? url;
  final List<double>? coordinates;

  PointOfSale(this.id, this.name, this.url, this.privateKey, this.coordinates);

  PointOfSale.fromMap(Map<String, dynamic> map)
      : privateKey = map[dbPrivateKey],
        name = map[dbName],
        id = map[dbId].toString(),
        coordinates = map[dbCoordinates],
        url = map[dbUrl];

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map[dbName] = name;
    map[dbId] = id;
    map[dbUrl] = url;
    map[dbPrivateKey] = privateKey;
    return map;
  }
}
