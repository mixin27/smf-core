import 'dart:io';

import 'package:dio/dio.dart';

/// Extensions of [DioError].
extension DioErrorX on DioError {
  /// Check [DioError] is [SocketException] and [DioErrorType.other].
  /// If result is `true`, it can be no connection error.
  ///
  /// Return `true` when the condition is true.
  bool get isNoConnectionError {
    return type == DioErrorType.other && error is SocketException;
  }
}
