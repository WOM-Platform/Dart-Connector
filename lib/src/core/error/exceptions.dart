enum ServerExceptionType {
  alreadyUsedFiscalCode,
  invalidFiscalCode,
  validation,
  unkown
}


class ServerException implements Exception {
  final String url;
  final String error;
  final String type;
  final int? statusCode;
  final String? message;

  ServerException({
    required this.url,
    required this.error,
    required this.type,
    this.statusCode,
    this.message,
  });


  ServerExceptionType get errorType {
    switch (type) {
      case 'https://wom.social/api/problems/fiscal-code-already-in-use-by-merchant':
        return ServerExceptionType.alreadyUsedFiscalCode;
      case 'https://wom.social/api/problems/fiscal-code-not-valid':
        return ServerExceptionType.invalidFiscalCode;
      case 'https://tools.ietf.org/html/rfc7231#section-6.5.1':
        return ServerExceptionType.validation;
      default:
        return ServerExceptionType.unkown;
    }
  }


  @override
  String toString() {
    return '$url => $type $error with: $statusCode, $message';
  }
}

class CacheException implements Exception {}

class VerifyPaymentException implements Exception {}

class RedeemVoucherExcpetion implements Exception {}

class InsufficientVouchers implements Exception {}
