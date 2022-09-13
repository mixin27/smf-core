import 'package:flutter/foundation.dart';
import 'package:smf_core/smf_core.dart';

/// Utilitiy helpers for `YouTube` video url.
class YtHelper {
  const YtHelper._();

  /// Sort the YouTube actual video urls.
  ///
  /// [urls] - Actual YouTube video urls.
  ///
  /// See [YoutubeService] to get actual YouTube video urls.
  static List<YoutubeVideoQualityUrl> sortQualityVideoUrls(
    List<YoutubeVideoQualityUrl>? urls,
  ) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _urls = urls;

    // has issues with 240p
    _urls?.removeWhere((element) => element.quality == 240);

    // has issues with 144p in web
    if (kIsWeb) {
      _urls?.removeWhere((element) => element.quality == 144);
    }

    // sort
    _urls?.sort((a, b) => a.quality.compareTo(b.quality));

    return _urls ?? [];
  }

  /// Get a single YouTube video url from urls.
  ///
  /// [quality] - integer value of video quality like `720`.
  /// [videoUrls] - Actual YouTube video urls.
  static Future<String> getUrlFromVideoQualityUrls({
    int? quality,
    required List<YoutubeVideoQualityUrl> videoUrls,
  }) async {
    final sorted = sortQualityVideoUrls(videoUrls);
    if (videoUrls.isEmpty) {
      throw Exception('videoQuality cannot be empty');
    }
    final q = quality ?? sorted[0].quality;
    final qualityAndUrl = getQualityUrl(q, sorted);
    return qualityAndUrl.url;
  }

  /// Get quality url.
  static YoutubeVideoQualityUrl getQualityUrl(
    int quality,
    List<YoutubeVideoQualityUrl> videoUrls,
  ) {
    return videoUrls.firstWhere(
      (element) => element.quality == quality,
      orElse: () => videoUrls.first,
    );
  }
}
