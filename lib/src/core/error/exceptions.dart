class ServerException implements Exception {
  final String? error;

  ServerException({this.error});
}

class CacheException implements Exception {}

class TimeoutException implements Exception {}

class VerifyPaymentException implements Exception {}

class RedeemVoucherExcpetion implements Exception {}

class InsufficientVouchers implements Exception {}
