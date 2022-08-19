import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:smf_core/smf_core.dart';

part 'vimeo_link_info_dto.freezed.dart';
part 'vimeo_link_info_dto.g.dart';

/// Vimeo video link info data object.
@freezed
class VimeoLinkInfoDto with _$VimeoLinkInfoDto {
  const factory VimeoLinkInfoDto({
    @JsonKey(name: 'html', fromJson: stringFromJson)
        required String embededHtml,
    @JsonKey(name: 'width', fromJson: numFromJson) required num width,
    @JsonKey(name: 'height', fromJson: numFromJson) required num height,
    @JsonKey(name: 'thumbnail_url', fromJson: stringFromJson)
        required String thumbnailUrl,
    @JsonKey(name: 'thumbnail_width', fromJson: numFromJson)
        required num thumbnailWidth,
    @JsonKey(name: 'thumbnail_height', fromJson: numFromJson)
        required num thumbnailHeight,
    @JsonKey(name: 'thumbnail_url_with_play_button', fromJson: stringFromJson)
        required String thumbnailUrlWithPlayButton,
    @JsonKey(name: 'video_id') required int videoId,
    @JsonKey(name: 'uri', fromJson: stringFromJson) required String uri,
  }) = _VimeoLinkInfoDto;

  factory VimeoLinkInfoDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoLinkInfoDtoFromJson(json);
}
