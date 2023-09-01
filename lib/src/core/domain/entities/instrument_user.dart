import 'package:dart_wom_connector/src/instrument/domain/entities/instrument.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/user.dart';

class InstrumentUser extends User implements Equatable {
  final List<Instrument> instruments;

  InstrumentUser({
    required this.instruments,
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

  @override
  List<Object?> get props => [name, surname, email, instruments, verified];

  @override
  bool? get stringify => throw UnimplementedError();
}
