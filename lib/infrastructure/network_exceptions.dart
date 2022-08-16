/// Specific [Exception] for `Rest APIs`.
class RestApiException implements Exception {
  final int? errorCode;
  final String? message;

  RestApiException(this.errorCode, this.message);
}

/// Specific [Exception] for `Soap APIs`.
class SoapApiException implements Exception {
  final int? errorCode;
  final String? message;

  SoapApiException(this.errorCode, this.message);
}
