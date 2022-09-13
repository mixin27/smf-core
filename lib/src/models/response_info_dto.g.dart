// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseInfoDto _$ResponseInfoDtoFromJson(Map<String, dynamic> json) =>
    ResponseInfoDto(
      code: stringFromJson(json['Code']),
      message: stringFromJson(json['Message']),
    );

Map<String, dynamic> _$ResponseInfoDtoToJson(ResponseInfoDto instance) =>
    <String, dynamic>{
      'Code': instance.code,
      'Message': instance.message,
    };
