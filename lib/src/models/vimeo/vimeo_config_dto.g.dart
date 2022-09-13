// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vimeo_config_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VimeoConfigDto _$VimeoConfigDtoFromJson(Map<String, dynamic> json) =>
    VimeoConfigDto(
      request:
          VimeoRequestDto.fromJson(json['request'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VimeoConfigDtoToJson(VimeoConfigDto instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
    };
