import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'vimeo_error_response_dto.freezed.dart';
part 'vimeo_error_response_dto.g.dart';

@freezed
class VimeoErrorResponseDto with _$VimeoErrorResponseDto {
  const VimeoErrorResponseDto._();
  const factory VimeoErrorResponseDto({
    @JsonKey(name: 'message') required String message,
  }) = _VimeoErrorResponseDto;

  factory VimeoErrorResponseDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoErrorResponseDtoFromJson(json);
}
