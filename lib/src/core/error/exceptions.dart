class ServerException implements Exception {
  final String url;
  final String? error;
  final int? statusCode;
  ServerException({required this.url, this.error, this.statusCode});

  @override
  String toString() {
    return '$url => $error with: $statusCode';
  }
}

class CacheException implements Exception {}

class TimeoutException implements Exception {}

class VerifyPaymentException implements Exception {}

class RedeemVoucherExcpetion implements Exception {}

class InsufficientVouchers implements Exception {}
