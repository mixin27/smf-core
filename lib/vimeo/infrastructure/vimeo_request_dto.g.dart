// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vimeo_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VimeoRequestDto _$$_VimeoRequestDtoFromJson(Map<String, dynamic> json) =>
    _$_VimeoRequestDto(
      files: VimeoFilesDto.fromJson(json['files'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VimeoRequestDtoToJson(_$_VimeoRequestDto instance) =>
    <String, dynamic>{
      'files': instance.files.toJson(),
    };
