class User {
  static String dbPrivateKey = 'privateKey';
  static String dbId = 'id';

  static String dbUrl = 'url';
  static String dbName = 'name';
  static String dbSurname = 'surname';
  static String dbEmail = 'email';
  static String dbVerified = 'verified';

  final String name;
  final String surname;
  final String email;
  final bool verified;

  User({
    required this.name,
    required this.surname,
    required this.email,
    required this.verified,
  });

//  User.fromMap(Map<String, dynamic> map, String actorKey)
//      : this.name = map['name'],
//        this.surname = map['surname'],
//       this.actors = List.from<>(map[actorKey]);
}
