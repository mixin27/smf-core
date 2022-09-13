import 'package:json_annotation/json_annotation.dart';
import 'package:smf_core/smf_core.dart';

part 'vimeo_config_dto.g.dart';

/// Vimeo configuration data object.
@JsonSerializable()
class VimeoConfigDto {
  @JsonKey(name: 'request')
  final VimeoRequestDto request;

  const VimeoConfigDto({
    required this.request,
  });

  VimeoConfigDto copyWith({
    VimeoRequestDto? request,
  }) {
    return VimeoConfigDto(
      request: request ?? this.request,
    );
  }

  factory VimeoConfigDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoConfigDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VimeoConfigDtoToJson(this);

  @override
  String toString() => 'VimeoConfigDto(request: $request)';

  @override
  bool operator ==(covariant VimeoConfigDto other) {
    if (identical(this, other)) return true;

    return other.request == request;
  }

  @override
  int get hashCode => request.hashCode;
}
