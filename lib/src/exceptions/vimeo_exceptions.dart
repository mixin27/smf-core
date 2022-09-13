/// Vimeo [Exception] will throw when the vimeo api request fail.
class VimeoApiException implements Exception {
  final int? code;
  final String? message;

  VimeoApiException({this.code, this.message});
}
