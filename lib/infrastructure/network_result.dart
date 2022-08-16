import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'network_result.freezed.dart';

/// Wrapper generic class for network response data.
///
/// Use `withData(T data)` when the response is success with data.
///
/// Use `noConnection()` when the `NoConnectionError`.
@freezed
class Result<T> with _$Result<T> {
  const factory Result.withData(T data) = _Data<T>;
  const factory Result.noConnection() = _NoConnection<T>;
  // You can add more union cases if required.
}
