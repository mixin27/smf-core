import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_result.freezed.dart';

/// Wrapper generic class for network response data.
///
/// Use `noConnection()` when the `NoConnectionError.
///
/// Use `withData(T data)` when the response is success with data.
@freezed
class Result<T> with _$Result<T> {
  const factory Result.noConnection() = _NoConnection<T>;
  const factory Result.withData(T data) = _Data<T>;
  // You can add more union cases if required.
}
