/// APIs utilities.
class ApiUtils {
  ApiUtils._();

  static const String keyAccept = 'Accept';
  static const String keyContentType = 'Content-type';
  static const String keyAuthorization = 'Authorization';

  static const String tokenTypeBearer = 'Bearer';

  static const String formUrlEncoded = 'application/x-www-form-urlencoded';
  static const String applicationJson = 'application/json';
  static const String textXml = 'text/xml; charset=utf-8';
  static const String acceptAll = '*/*';

  // APIs response keys
  static const String keyResponseInfo = 'ResponseInfo';
  static const String keyResponseData = 'ResponseData';

  static _Status get status => _Status._();
  static HttpStatus get httpStatus => HttpStatus._();
  static ApiMessage get messages => ApiMessage._();
}

/// ResponseInfo status
class _Status {
  _Status._();

  final String ok = '0';
  final String error = '107';
}

/// Http status
class HttpStatus {
  HttpStatus._();

  final int ok = 200;
  final int created = 201;
  final int notModified = 304;
  final int badRequest = 400;
  final int unAuthorized = 401;
  final int forbidden = 403;
  final int notFound = 404;
  final int tooManyRequests = 429;
  final int internelServerError = 500;
  final int serviceUnavailable = 503;
}

/// APIs messages.
class ApiMessage {
  ApiMessage._();

  final String unknownError = 'Unknown Error';
  final String connectionProblem = 'Connection Problem';
  final String success = 'Success';
  final String error = 'Error';
  final String failed = 'Failed';
  final String created = '201 Created';
  final String notModified = '304 Not modified';
  final String badRequest = '400 Bad request';
  final String unAuthorized = '401 Unauthorized';
  final String forbidden = '403 Forbidden';
  final String notFound = '404 Not found';
  final String tooManyRequests = '429 Too many requests';
  final String internelServerError = '500 Internal server error';
  final String serviceUnavailable = '503 Service unavailable';
}
