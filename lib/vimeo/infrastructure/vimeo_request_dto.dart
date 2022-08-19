import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'vimeo_files_dto.dart';

part 'vimeo_request_dto.freezed.dart';
part 'vimeo_request_dto.g.dart';

/// Vimeo request data object.
@freezed
class VimeoRequestDto with _$VimeoRequestDto {
  const VimeoRequestDto._();
  const factory VimeoRequestDto({
    @JsonKey(name: 'files') required VimeoFilesDto files,
  }) = _VimeoRequestDto;

  factory VimeoRequestDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoRequestDtoFromJson(json);
}
