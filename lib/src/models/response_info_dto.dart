import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_info_dto.freezed.dart';

/// Data transfer object for `responseInfo` object from `SOAP APIs` response.
///
/// This object always response the same.
@freezed
class ResponseInfoDto with _$ResponseInfoDto {
  // You need private constructor when additional codes are added.
  const ResponseInfoDto._();

  const factory ResponseInfoDto({
    @JsonKey(name: 'Code') required String code,
    @JsonKey(name: 'Message') required String message,
  }) = _ResponseInfoDto;

  // Additional code for json_serializable methods - fromJson, toJson
  factory ResponseInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseInfoDtoFromJson(json);
}
