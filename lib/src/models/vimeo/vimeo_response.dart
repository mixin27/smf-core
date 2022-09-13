import 'package:freezed_annotation/freezed_annotation.dart';

part 'vimeo_response.freezed.dart';

/// Data wrapper class for vimeo api response.
@freezed
class VimeoResponse<T> with _$VimeoResponse<T> {
  const VimeoResponse._();
  const factory VimeoResponse.data(T data) = _Data<T>;
  // const factory VimeoResponse.error([String? message]) = _Error<T>;
}
