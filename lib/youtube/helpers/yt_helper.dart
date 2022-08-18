import 'package:flutter/foundation.dart';
import 'package:smf_core/smf_core.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class YtHelper {
  const YtHelper._();

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

  static List<YoutubeVideoQualityUrl> sortQualityVideoUrls(
    List<YoutubeVideoQualityUrl>? urls,
  ) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _urls = urls;

    ///has issues with 240p
    _urls?.removeWhere((element) => element.quality == 240);

    ///has issues with 144p in web
    if (kIsWeb) {
      _urls?.removeWhere((element) => element.quality == 144);
    }

    ///sort
    _urls?.sort((a, b) => a.quality.compareTo(b.quality));

    ///
    return _urls ?? [];
  }

  static YoutubeVideoQualityUrl getQualityUrl(
      int quality, List<YoutubeVideoQualityUrl> videoUrls) {
    return videoUrls.firstWhere(
      (element) => element.quality == quality,
      orElse: () => videoUrls.first,
    );
  }

  static Future<List<YoutubeVideoQualityUrl>> getVideoQualityUrlsFromYoutube(
    String youtubeIdOrUrl,
  ) async {
    try {
      final yt = YoutubeExplode();
      final muxed =
          (await yt.videos.streamsClient.getManifest(youtubeIdOrUrl)).muxed;
      // ignore: no_leading_underscores_for_local_identifiers
      final _urls = muxed
          .map(
            (element) => YoutubeVideoQualityUrl(
              quality: int.parse(element.qualityLabel.split('p')[0]),
              url: element.url.toString(),
            ),
          )
          .toList();

      // Close the YoutubeExplode's http client.
      yt.close();
      return sortQualityVideoUrls(_urls);
    } catch (error) {
      if (error.toString().contains('XMLHttpRequest')) {
        Logger.logInfo(
          'YtHelper',
          '(INFO) To play youtube video in WEB, Please enable CORS in your browser',
        );
      }
      Logger.logError(
        'YtHelper',
        '===== YOUTUBE API ERROR: $error ==========',
      );
      rethrow;
    }
  }
}
