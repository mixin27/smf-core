import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'vimeo_video_link_dto.dart';

part 'vimeo_files_dto.freezed.dart';
part 'vimeo_files_dto.g.dart';

/// Vimeo files data object.
@freezed
class VimeoFilesDto with _$VimeoFilesDto {
  const VimeoFilesDto._();
  const factory VimeoFilesDto({
    @JsonKey(name: 'progressive') required List<VimeoVideoLinkDto> videoLinks,
  }) = _VimeoFilesDto;

  factory VimeoFilesDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoFilesDtoFromJson(json);
}
