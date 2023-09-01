import 'package:dart_wom_connector/src/pos/domain/entities/merchant.dart';

import '../../domain/entities/user.dart';

class POSUser extends User {
  final List<Merchant> merchants;

  final String id;

  POSUser({
    required this.id,
    required this.merchants,
    required String name,
    required String surname,
    required String email,
    required bool verified,
  }) : super(
          name: name,
          surname: surname,
          email: email,
          verified: verified,
        );
}
