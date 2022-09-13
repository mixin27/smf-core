// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vimeo_link_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VimeoLinkInfoDto _$VimeoLinkInfoDtoFromJson(Map<String, dynamic> json) =>
    VimeoLinkInfoDto(
      embededHtml: stringFromJson(json['html']),
      width: numFromJson(json['width']),
      height: numFromJson(json['height']),
      thumbnailUrl: stringFromJson(json['thumbnail_url']),
      thumbnailWidth: numFromJson(json['thumbnail_width']),
      thumbnailHeight: numFromJson(json['thumbnail_height']),
      thumbnailUrlWithPlayButton:
          stringFromJson(json['thumbnail_url_with_play_button']),
      videoId: json['video_id'] as int,
      uri: stringFromJson(json['uri']),
    );

Map<String, dynamic> _$VimeoLinkInfoDtoToJson(VimeoLinkInfoDto instance) =>
    <String, dynamic>{
      'html': instance.embededHtml,
      'width': instance.width,
      'height': instance.height,
      'thumbnail_url': instance.thumbnailUrl,
      'thumbnail_width': instance.thumbnailWidth,
      'thumbnail_height': instance.thumbnailHeight,
      'thumbnail_url_with_play_button': instance.thumbnailUrlWithPlayButton,
      'video_id': instance.videoId,
      'uri': instance.uri,
    };
