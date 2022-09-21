// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorBody _$ErrorBodyFromJson(Map<String, dynamic> json) => ErrorBody(
      code: stringFromJson(json['code']),
      message: stringFromJson(json['message']),
      description: stringFromJson(json['description']),
    );

Map<String, dynamic> _$ErrorBodyToJson(ErrorBody instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'description': instance.description,
    };
