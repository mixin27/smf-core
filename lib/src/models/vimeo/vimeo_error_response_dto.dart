import 'package:json_annotation/json_annotation.dart';

part 'vimeo_error_response_dto.g.dart';

/// Vimeo error response data object.
@JsonSerializable()
class VimeoErrorResponseDto {
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'error')
  final String? error;
  @JsonKey(name: 'developer_message')
  final String? developerMessage;

  const VimeoErrorResponseDto({
    this.message,
    this.error,
    this.developerMessage,
  });

  factory VimeoErrorResponseDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoErrorResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VimeoErrorResponseDtoToJson(this);

  VimeoErrorResponseDto copyWith({
    String? message,
    String? error,
    String? developerMessage,
  }) {
    return VimeoErrorResponseDto(
      message: message ?? this.message,
      error: error ?? this.error,
      developerMessage: developerMessage ?? this.developerMessage,
    );
  }

  @override
  String toString() =>
      'VimeoErrorResponseDto(message: $message, error: $error, developerMessage: $developerMessage)';

  @override
  bool operator ==(covariant VimeoErrorResponseDto other) {
    if (identical(this, other)) return true;

    return other.message == message &&
        other.error == error &&
        other.developerMessage == developerMessage;
  }

  @override
  int get hashCode =>
      message.hashCode ^ error.hashCode ^ developerMessage.hashCode;
}
