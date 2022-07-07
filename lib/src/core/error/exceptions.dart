class ServerException implements Exception {
  final String url;
  final String error;
  final String type;
  final int? statusCode;

  ServerException({
    required this.url,
    required this.error,
    required this.type,
    this.statusCode,
  });

  @override
  String toString() {
    return '$url => $type $error with: $statusCode';
  }
}

class CacheException implements Exception {}

class VerifyPaymentException implements Exception {}

class RedeemVoucherExcpetion implements Exception {}

class InsufficientVouchers implements Exception {}
