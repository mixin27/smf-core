class VimeoApiException implements Exception {
  final int? code;
  final String? message;

  VimeoApiException({this.code, this.message});
}
