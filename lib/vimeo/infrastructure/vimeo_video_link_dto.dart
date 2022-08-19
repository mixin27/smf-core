import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:smf_core/vimeo/feat_vimeo.dart';

part 'vimeo_video_link_dto.freezed.dart';
part 'vimeo_video_link_dto.g.dart';

/// Vimeo video link data object.
@freezed
class VimeoVideoLinkDto with _$VimeoVideoLinkDto {
  const VimeoVideoLinkDto._();
  const factory VimeoVideoLinkDto({
    required String id,
    required String mime,
    required int fps,
    required String url,
    required String quality,
    required int height,
  }) = _VimeoVideoLinkDto;

  factory VimeoVideoLinkDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoVideoLinkDtoFromJson(json);

  factory VimeoVideoLinkDto.fromDomain(VimeoVideoLink _) => VimeoVideoLinkDto(
        id: _.id,
        mime: _.mime,
        fps: _.fps,
        url: _.url,
        quality: _.quality,
        height: _.height,
      );

  VimeoVideoLink toDomain() => VimeoVideoLink(
        id: id,
        mime: mime,
        fps: fps,
        url: url,
        quality: quality,
        height: height,
      );
}
