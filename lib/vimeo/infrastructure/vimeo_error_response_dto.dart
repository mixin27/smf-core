import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'vimeo_error_response_dto.freezed.dart';
part 'vimeo_error_response_dto.g.dart';

/// Vimeo error response data object.
@freezed
class VimeoErrorResponseDto with _$VimeoErrorResponseDto {
  const VimeoErrorResponseDto._();
  const factory VimeoErrorResponseDto({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'developer_message') String? developerMessage,
  }) = _VimeoErrorResponseDto;

  factory VimeoErrorResponseDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoErrorResponseDtoFromJson(json);
}
