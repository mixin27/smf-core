enum RequestType {
  postReq,
  getReq,
  postWithAuthReq,
  getWithAuthReq,
}

class ApiUtils {
  ApiUtils._();

  static const String keyAccept = 'Accept';
  static const String keyContentType = 'Content-type';
  static const String keyAuthorization = 'Authorization';

  static const String formUrlEncoded = 'application/x-www-form-urlencoded';
  static const String applicationJson = 'application/json';
  static const String textXml = 'text/xml; charset=utf-8';

  static Map<String, String> getHeaderForREST({
    RequestType requestType = RequestType.getReq,
    String token = "",
  }) {
    switch (requestType) {
      case RequestType.postReq:
        return {
          keyAccept: applicationJson,
          keyContentType: applicationJson,
        };
      case RequestType.getReq:
        return {
          keyAccept: applicationJson,
        };
      case RequestType.postWithAuthReq:
        return {
          keyAccept: applicationJson,
          keyContentType: applicationJson,
          keyAuthorization: "Bearer $token"
        };
      case RequestType.getWithAuthReq:
        return {
          keyAccept: applicationJson,
          keyAuthorization: "Bearer $token",
        };
    }
  }
}
