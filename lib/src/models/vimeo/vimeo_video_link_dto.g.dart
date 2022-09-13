// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vimeo_video_link_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VimeoVideoLinkDto _$VimeoVideoLinkDtoFromJson(Map<String, dynamic> json) =>
    VimeoVideoLinkDto(
      id: json['id'] as String,
      mime: json['mime'] as String,
      fps: json['fps'] as int,
      url: json['url'] as String,
      quality: json['quality'] as String,
      height: json['height'] as int,
    );

Map<String, dynamic> _$VimeoVideoLinkDtoToJson(VimeoVideoLinkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mime': instance.mime,
      'fps': instance.fps,
      'url': instance.url,
      'quality': instance.quality,
      'height': instance.height,
    };
