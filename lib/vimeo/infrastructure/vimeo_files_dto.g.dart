// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vimeo_files_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VimeoFilesDto _$$_VimeoFilesDtoFromJson(Map<String, dynamic> json) =>
    _$_VimeoFilesDto(
      videoLinks: (json['progressive'] as List<dynamic>)
          .map((e) => VimeoVideoLinkDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VimeoFilesDtoToJson(_$_VimeoFilesDto instance) =>
    <String, dynamic>{
      'progressive': instance.videoLinks.map((e) => e.toJson()).toList(),
    };
