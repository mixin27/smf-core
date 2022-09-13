import 'package:freezed_annotation/freezed_annotation.dart';

part 'vimeo_video_link.freezed.dart';

/// `domain` layer model for vimeo video link data object.
@freezed
class VimeoVideoLink with _$VimeoVideoLink {
  const VimeoVideoLink._();
  const factory VimeoVideoLink({
    required String id,
    required String mime,
    required int fps,
    required String url,
    required String quality,
    required int height,
  }) = _VimeoVideoLink;
}
