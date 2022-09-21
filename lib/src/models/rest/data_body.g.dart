// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataBody _$DataBodyFromJson(Map<String, dynamic> json) => DataBody(
      code: stringFromJson(json['code']),
      message: stringFromJson(json['message']),
      description: stringFromJson(json['description']),
      data: json['data'],
    );

Map<String, dynamic> _$DataBodyToJson(DataBody instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'description': instance.description,
      'data': instance.data,
    };
