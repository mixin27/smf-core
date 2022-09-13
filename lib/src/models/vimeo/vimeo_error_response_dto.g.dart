// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vimeo_error_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VimeoErrorResponseDto _$VimeoErrorResponseDtoFromJson(
        Map<String, dynamic> json) =>
    VimeoErrorResponseDto(
      message: json['message'] as String?,
      error: json['error'] as String?,
      developerMessage: json['developer_message'] as String?,
    );

Map<String, dynamic> _$VimeoErrorResponseDtoToJson(
        VimeoErrorResponseDto instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'developer_message': instance.developerMessage,
    };
