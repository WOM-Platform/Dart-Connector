import 'package:dart_wom_connector/src/pos/domain/entities/merchant.dart';

class User {
  static String dbPrivateKey = 'privateKey';
  static String dbId = 'id';

  static String dbUrl = 'url';
  static String dbName = 'name';
  static String dbSurname = 'surname';
  static String dbEmail = 'email';

  List<Merchant>? merchants;
  final String? name;
  final String? surname;
  final String? email;

  User({
    this.name,
    this.surname,
    this.email,
    this.merchants,
  });

//  User.fromMap(Map<String, dynamic> map, String actorKey)
//      : this.name = map['name'],
//        this.surname = map['surname'],
//       this.actors = List.from<>(map[actorKey]);
}
