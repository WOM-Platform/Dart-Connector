import 'package:dart_wom_connector/src/instrument/domain/entities/instrument.dart';

import '../../domain/entities/user.dart';

class InstrumentUser extends User {
  final List<Instrument> instruments;

  InstrumentUser({
    required this.instruments,
    required String name,
    required String surname,
    required String email,
  }) : super(
          name: name,
          surname: surname,
          email: email,
        );
}
