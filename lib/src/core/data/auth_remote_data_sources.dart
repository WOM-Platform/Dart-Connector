// import 'dart:convert';
//
// import 'package:dart_wom_connector/src/core/domain/entities/pos_user.dart';
// import 'package:dart_wom_connector/src/core/domain/entities/user.dart';
// import 'package:dart_wom_connector/src/core/domain/entities/user_type_enum.dart';
// import 'package:dart_wom_connector/src/pos/domain/entities/merchant.dart';
//
// import 'http_helper.dart';
//
// abstract class AuthRemoteDataSources {
//   Future<User> authenticate({String? username, String? password});
// }
//
// class AuthRemoteDataSourcesImpl implements AuthRemoteDataSources {
//   final UserType userType;
//   final String domain;
//
//   AuthRemoteDataSourcesImpl(
//     this.userType,
//     this.domain,
//   );
//
//   // @override
//   // Future<User> authenticate({String? username, String? password}) async {
//   //   final bytes = utf8.encode('$username:$password');
//   //   final base64String = Base64Encoder().convert(bytes);
//   //   if (userType == UserType.POS) {
//   //     return _authenticatePos(base64String: base64String);
//   //   } else {
//   //     return _authenticateInstrument(base64String: base64String);
//   //   }
//   // }
//   //
//   // Future<User> _authenticatePos({String? base64String}) async {
//   //   final body = await HttpHelper.authenticate(
//   //       'https://$domain/api/v2/auth/merchant', base64String);
//   //   final map = json.decode(body);
//   //   final name = map[User.dbName];
//   //   final surname = map[User.dbSurname];
//   //   final email = map[User.dbEmail];
//   //   final merchants = List<Merchant>.from(
//   //       map['merchants'].map<Merchant>((m) => Merchant.fromMap(m)));
//   //   return POSUser(
//   //       name: name, surname: surname, email: email, merchants: merchants);
//   // }
//   //
//   // Future<User> _authenticateInstrument({String? base64String}) async {
//   //   throw UnimplementedError();
//   // }
// }
