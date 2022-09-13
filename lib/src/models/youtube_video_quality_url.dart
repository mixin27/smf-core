import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_video_quality_url.freezed.dart';

@freezed
class YoutubeVideoQualityUrl with _$YoutubeVideoQualityUrl {
  const factory YoutubeVideoQualityUrl({
    required int quality,
    required String url,
  }) = _YoutubeVideoQualityUrl;
}
