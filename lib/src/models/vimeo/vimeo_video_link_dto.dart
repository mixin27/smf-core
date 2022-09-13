import 'package:json_annotation/json_annotation.dart';
import 'package:smf_core/smf_core.dart';

part 'vimeo_video_link_dto.g.dart';

/// Vimeo video link data object.
@JsonSerializable()
class VimeoVideoLinkDto {
  final String id;
  final String mime;
  final int fps;
  final String url;
  final String quality;
  final int height;

  const VimeoVideoLinkDto({
    required this.id,
    required this.mime,
    required this.fps,
    required this.url,
    required this.quality,
    required this.height,
  });

  VimeoVideoLinkDto copyWith({
    String? id,
    String? mime,
    int? fps,
    String? url,
    String? quality,
    int? height,
  }) {
    return VimeoVideoLinkDto(
      id: id ?? this.id,
      mime: mime ?? this.mime,
      fps: fps ?? this.fps,
      url: url ?? this.url,
      quality: quality ?? this.quality,
      height: height ?? this.height,
    );
  }

  factory VimeoVideoLinkDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoVideoLinkDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VimeoVideoLinkDtoToJson(this);

  VimeoVideoLink toDomain() => VimeoVideoLink(
        id: id,
        mime: mime,
        fps: fps,
        url: url,
        quality: quality,
        height: height,
      );

  @override
  String toString() {
    return 'VimeoVideoLinkDto(id: $id, mime: $mime, fps: $fps, url: $url, quality: $quality, height: $height)';
  }

  @override
  bool operator ==(covariant VimeoVideoLinkDto other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.mime == mime &&
        other.fps == fps &&
        other.url == url &&
        other.quality == quality &&
        other.height == height;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        mime.hashCode ^
        fps.hashCode ^
        url.hashCode ^
        quality.hashCode ^
        height.hashCode;
  }
}
