import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:smf_core/smf_core.dart';

part 'vimeo_files_dto.g.dart';

/// Vimeo files data object.
@JsonSerializable()
class VimeoFilesDto {
  @JsonKey(name: 'progressive')
  final List<VimeoVideoLinkDto> videoLinks;

  const VimeoFilesDto({
    required this.videoLinks,
  });

  VimeoFilesDto copyWith({
    List<VimeoVideoLinkDto>? videoLinks,
  }) {
    return VimeoFilesDto(
      videoLinks: videoLinks ?? this.videoLinks,
    );
  }

  factory VimeoFilesDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoFilesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VimeoFilesDtoToJson(this);

  @override
  String toString() => 'VimeoFilesDto(videoLinks: $videoLinks)';

  @override
  bool operator ==(covariant VimeoFilesDto other) {
    if (identical(this, other)) return true;

    return listEquals(other.videoLinks, videoLinks);
  }

  @override
  int get hashCode => videoLinks.hashCode;
}
