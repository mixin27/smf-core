import 'package:json_annotation/json_annotation.dart';
import 'package:smf_core/smf_core.dart';

part 'response_info_dto.g.dart';

/// Data transfer object for `responseInfo` object from `SOAP APIs` response.
///
/// This object always response the same.
@JsonSerializable()
class ResponseInfoDto {
  @JsonKey(name: 'Code', fromJson: stringFromJson)
  final String code;
  @JsonKey(name: 'Message', fromJson: stringFromJson)
  final String message;

  ResponseInfoDto({
    required this.code,
    required this.message,
  });

  factory ResponseInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseInfoDtoToJson(this);

  ResponseInfoDto copyWith({
    String? code,
    String? message,
  }) {
    return ResponseInfoDto(
      code: code ?? this.code,
      message: message ?? this.message,
    );
  }

  @override
  String toString() => 'ResponseInfoDto(code: $code, message: $message)';

  @override
  bool operator ==(covariant ResponseInfoDto other) {
    if (identical(this, other)) return true;

    return other.code == code && other.message == message;
  }

  @override
  int get hashCode => code.hashCode ^ message.hashCode;
}
