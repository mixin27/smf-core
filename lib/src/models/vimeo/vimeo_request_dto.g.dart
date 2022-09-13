// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vimeo_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VimeoRequestDto _$VimeoRequestDtoFromJson(Map<String, dynamic> json) =>
    VimeoRequestDto(
      files: VimeoFilesDto.fromJson(json['files'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VimeoRequestDtoToJson(VimeoRequestDto instance) =>
    <String, dynamic>{
      'files': instance.files.toJson(),
    };
