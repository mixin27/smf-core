/// APIs utilities.
class ApiUtils {
  ApiUtils._();

  static const String keyAccept = 'Accept';
  static const String keyContentType = 'Content-type';
  static const String keyAuthorization = 'Authorization';

  static const String formUrlEncoded = 'application/x-www-form-urlencoded';
  static const String applicationJson = 'application/json';
  static const String textXml = 'text/xml; charset=utf-8';

  // APIs response keys
  static const String keyResponseInfo = 'ResponseInfo';
  static const String keyResponseData = 'ResponseData';

  static _Status get status => _Status._();
  static _Message get messages => _Message._();
}

/// ResponseInfo status
class _Status {
  _Status._();

  final String ok = '0';
  final String error = '107';
}

/// APIs messages.
class _Message {
  _Message._();

  final String unknownError = 'Unknown Error';
  final String connectionProblem = 'Connection Problem';
  final String success = 'Success';
  final String error = 'Error';
  final String failed = 'Failed';
}
