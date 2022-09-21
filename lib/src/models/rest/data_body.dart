import 'package:json_annotation/json_annotation.dart';
import 'package:smf_core/smf_core.dart';

part 'data_body.g.dart';

@JsonSerializable()
class DataBody {
  @JsonKey(name: 'code', fromJson: stringFromJson)
  final String code;
  @JsonKey(name: 'message', fromJson: stringFromJson)
  final String message;
  @JsonKey(name: 'description', fromJson: stringFromJson)
  final String description;
  @JsonKey(name: 'data')
  final dynamic data;

  DataBody({
    required this.code,
    required this.message,
    required this.description,
    required this.data,
  });

  factory DataBody.fromJson(Map<String, dynamic> json) =>
      _$DataBodyFromJson(json);

  Map<String, dynamic> toJson() => _$DataBodyToJson(this);

  DataBody copyWith({
    String? code,
    String? message,
    String? description,
    dynamic data,
  }) {
    return DataBody(
      code: code ?? this.code,
      message: message ?? this.message,
      description: description ?? this.description,
      data: data ?? this.data,
    );
  }

  @override
  String toString() {
    return 'DataBody(code: $code, message: $message, description: $description, data: $data)';
  }

  @override
  bool operator ==(covariant DataBody other) {
    if (identical(this, other)) return true;

    return other.code == code &&
        other.message == message &&
        other.description == description &&
        other.data == data;
  }

  @override
  int get hashCode {
    return code.hashCode ^
        message.hashCode ^
        description.hashCode ^
        data.hashCode;
  }
}
