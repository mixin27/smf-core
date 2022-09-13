// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vimeo_files_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VimeoFilesDto _$VimeoFilesDtoFromJson(Map<String, dynamic> json) =>
    VimeoFilesDto(
      videoLinks: (json['progressive'] as List<dynamic>)
          .map((e) => VimeoVideoLinkDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VimeoFilesDtoToJson(VimeoFilesDto instance) =>
    <String, dynamic>{
      'progressive': instance.videoLinks.map((e) => e.toJson()).toList(),
    };
