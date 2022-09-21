import 'dart:convert';

import 'package:dio/dio.dart';

/// Convert `null` value from [Object] to `empty` string.
String stringFromJson(Object? json) => (json as String?) ?? '';

/// Convert `null` value from [Object] to `num`.
num numFromJson(Object? json) => (json as num?) ?? 0;

/// Convert `null` value from [Object] to `bool`.
bool boolFromJson(Object? json) => (json as bool?) ?? false;

/// Decode to json `2nd` time
/// because consuming `SOAP` api need to convert for second time.
T nextDecode<T>(dynamic json, String key) => jsonDecode(json[key]) as T;

/// Convert `data` of [Response] to [T]
T responseData<T>(Response<dynamic> response) => response.data as T;
