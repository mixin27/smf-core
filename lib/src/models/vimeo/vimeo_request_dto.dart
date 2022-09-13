import 'package:json_annotation/json_annotation.dart';
import 'package:smf_core/smf_core.dart';

part 'vimeo_request_dto.g.dart';

/// Vimeo request data object.
@JsonSerializable()
class VimeoRequestDto {
  @JsonKey(name: 'files')
  final VimeoFilesDto files;

  const VimeoRequestDto({
    required this.files,
  });

  VimeoRequestDto copyWith({
    VimeoFilesDto? files,
  }) {
    return VimeoRequestDto(
      files: files ?? this.files,
    );
  }

  factory VimeoRequestDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VimeoRequestDtoToJson(this);

  @override
  String toString() => 'VimeoRequestDto(files: $files)';

  @override
  bool operator ==(covariant VimeoRequestDto other) {
    if (identical(this, other)) return true;

    return other.files == files;
  }

  @override
  int get hashCode => files.hashCode;
}
