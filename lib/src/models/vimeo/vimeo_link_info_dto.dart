import 'package:json_annotation/json_annotation.dart';
import 'package:smf_core/smf_core.dart';

part 'vimeo_link_info_dto.g.dart';

/// Vimeo video link info data object.
@JsonSerializable()
class VimeoLinkInfoDto {
  @JsonKey(name: 'html', fromJson: stringFromJson)
  final String embededHtml;
  @JsonKey(name: 'width', fromJson: numFromJson)
  final num width;
  @JsonKey(name: 'height', fromJson: numFromJson)
  final num height;
  @JsonKey(name: 'thumbnail_url', fromJson: stringFromJson)
  final String thumbnailUrl;
  @JsonKey(name: 'thumbnail_width', fromJson: numFromJson)
  final num thumbnailWidth;
  @JsonKey(name: 'thumbnail_height', fromJson: numFromJson)
  final num thumbnailHeight;
  @JsonKey(name: 'thumbnail_url_with_play_button', fromJson: stringFromJson)
  final String thumbnailUrlWithPlayButton;
  @JsonKey(name: 'video_id')
  final int videoId;
  @JsonKey(name: 'uri', fromJson: stringFromJson)
  final String uri;

  const VimeoLinkInfoDto({
    required this.embededHtml,
    required this.width,
    required this.height,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    required this.thumbnailUrlWithPlayButton,
    required this.videoId,
    required this.uri,
  });

  factory VimeoLinkInfoDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoLinkInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VimeoLinkInfoDtoToJson(this);

  VimeoLinkInfoDto copyWith({
    String? embededHtml,
    num? width,
    num? height,
    String? thumbnailUrl,
    num? thumbnailWidth,
    num? thumbnailHeight,
    String? thumbnailUrlWithPlayButton,
    int? videoId,
    String? uri,
  }) {
    return VimeoLinkInfoDto(
      embededHtml: embededHtml ?? this.embededHtml,
      width: width ?? this.width,
      height: height ?? this.height,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
      thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
      thumbnailUrlWithPlayButton:
          thumbnailUrlWithPlayButton ?? this.thumbnailUrlWithPlayButton,
      videoId: videoId ?? this.videoId,
      uri: uri ?? this.uri,
    );
  }

  @override
  String toString() {
    return 'VimeoLinkInfoDto(embededHtml: $embededHtml, width: $width, height: $height, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight, thumbnailUrlWithPlayButton: $thumbnailUrlWithPlayButton, videoId: $videoId, uri: $uri)';
  }

  @override
  bool operator ==(covariant VimeoLinkInfoDto other) {
    if (identical(this, other)) return true;

    return other.embededHtml == embededHtml &&
        other.width == width &&
        other.height == height &&
        other.thumbnailUrl == thumbnailUrl &&
        other.thumbnailWidth == thumbnailWidth &&
        other.thumbnailHeight == thumbnailHeight &&
        other.thumbnailUrlWithPlayButton == thumbnailUrlWithPlayButton &&
        other.videoId == videoId &&
        other.uri == uri;
  }

  @override
  int get hashCode {
    return embededHtml.hashCode ^
        width.hashCode ^
        height.hashCode ^
        thumbnailUrl.hashCode ^
        thumbnailWidth.hashCode ^
        thumbnailHeight.hashCode ^
        thumbnailUrlWithPlayButton.hashCode ^
        videoId.hashCode ^
        uri.hashCode;
  }
}
