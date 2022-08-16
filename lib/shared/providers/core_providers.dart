import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smf_core/smf_core.dart';

/// Provide [Dio] client for content type `text/xml; charset=utf-8`.
///
/// Especially use for requesting `SOAP APIs` with `envelop` body.
final dioForXmlProvider = Provider(
  (ref) => Dio()
    ..options = BaseOptions(
      contentType: ApiUtils.textXml,
    ),
);

/// Provide [Dio] client for content type `application/x-www-form-urlencoded`.
///
/// Especially use for requesting `SOAP APIs` with `"key": value` body.
final dioForFormUrlEncodedProvider = Provider(
  (ref) => Dio()
    ..options = BaseOptions(
      contentType: ApiUtils.formUrlEncoded,
    ),
);

/// Provide [Dio] client for content type `application/json`.
///
/// Especially use for requesting `REST APIs`.
final dioForApplicationJSONProvider = Provider(
  (ref) => Dio()
    ..options = BaseOptions(
      contentType: ApiUtils.applicationJson,
    ),
);
