import 'package:smf_core/smf_core.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

/// Remote service for `YouTube` video link.
class YoutubeService {
  /// Get actual video quality urls from `YouTube`.
  ///
  /// [youtubeIdOrUrl] - YouTube video url or id.
  Future<List<YoutubeVideoQualityUrl>> getVideoQualityUrlsFromYoutube(
    String youtubeIdOrUrl,
  ) async {
    try {
      final yt = YoutubeExplode();
      final muxed =
          (await yt.videos.streamsClient.getManifest(youtubeIdOrUrl)).muxed;
      final urls = muxed
          .map((element) => YoutubeVideoQualityUrl(
                quality: int.parse(element.qualityLabel.split('p')[0]),
                url: element.url.toString(),
              ))
          .toList();

      // Close the YoutubeExplode's http client.
      yt.close();

      return YtHelper.sortQualityVideoUrls(urls);
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
