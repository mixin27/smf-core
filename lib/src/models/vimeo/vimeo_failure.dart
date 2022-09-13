import 'package:freezed_annotation/freezed_annotation.dart';

part 'vimeo_failure.freezed.dart';

/// Vimeo failure object.
@freezed
class VimeoFailure with _$VimeoFailure {
  const factory VimeoFailure.api([String? message]) = _Api;
  const factory VimeoFailure.unknown([String? message]) = _Unknown;
}
