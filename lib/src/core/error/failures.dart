import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  final String message;

  ServerFailure(this.message);
}

class UnknownFailure extends Failure {
  final String message;

  UnknownFailure(this.message);
}
class VerifyPaymentFailure extends Failure {}

class CacheFailure extends Failure {}
class InsufficientVouchers extends Failure {}
