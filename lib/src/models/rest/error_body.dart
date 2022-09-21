import 'package:json_annotation/json_annotation.dart';
import 'package:smf_core/smf_core.dart';

part 'error_body.g.dart';

@JsonSerializable()
class ErrorBody {
  @JsonKey(name: 'code', fromJson: stringFromJson)
  final String code;
  @JsonKey(name: 'message', fromJson: stringFromJson)
  final String message;
  @JsonKey(name: 'description', fromJson: stringFromJson)
  final String description;

  ErrorBody({
    required this.code,
    required this.message,
    required this.description,
  });

  factory ErrorBody.fromJson(Map<String, dynamic> json) =>
      _$ErrorBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorBodyToJson(this);

  ErrorBody copyWith({
    String? code,
    String? message,
    String? description,
  }) {
    return ErrorBody(
      code: code ?? this.code,
      message: message ?? this.message,
      description: description ?? this.description,
    );
  }

  @override
  String toString() =>
      'ErrorBody(code: $code, message: $message, description: $description)';

  @override
  bool operator ==(covariant ErrorBody other) {
    if (identical(this, other)) return true;

    return other.code == code &&
        other.message == message &&
        other.description == description;
  }

  @override
  int get hashCode => code.hashCode ^ message.hashCode ^ description.hashCode;
}
