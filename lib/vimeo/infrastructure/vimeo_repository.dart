import 'package:dartz/dartz.dart';
import 'package:smf_core/vimeo/feat_vimeo.dart';

/// Repository class to communicate between `domain` layer and `infrastructure`
/// layer.
class VimeoRepository {
  final VimeoRemoteService _service;

  VimeoRepository(this._service);

  /// Get list of [VimeoVideoLink].
  ///
  /// Return [VimeoFailure] on the `left`.
  /// Return list of [VimeoVideoLink] on the `right`.
  Future<Either<VimeoFailure, List<VimeoVideoLink>>> getVimeoVideoLinks(
    String? videoId,
  ) async {
    try {
      final remoteResponse = await _service.fetchAllVimeoVideoLinks(
        videoId: videoId,
      );

      return right(
        await remoteResponse.when(
          data: (videos) => videos.toDomainList(),
        ),
      );
    } on VimeoApiException catch (e) {
      return left(VimeoFailure.api(e.message));
    }
  }

  /// Get vimeo video id from vimeo video url.
  ///
  /// [url] - Vimeo video url.
  ///
  /// Return [VimeoFailure] on the `left`.
  /// Return [String] value of videoId on the `right`.
  Future<Either<VimeoFailure, String>> getVimeoIdFromUrl({
    required String url,
  }) async {
    try {
      final remoteResponse = await _service.fetchVimeoInfoFromUrl(
        url: url,
      );

      return right(
        await remoteResponse.when(
          data: (info) => info.videoId.toString(),
        ),
      );
    } on VimeoApiException catch (e) {
      return left(VimeoFailure.api(e.message));
    }
  }
}
