import 'package:dartz/dartz.dart';
import 'package:smf_core/vimeo/feat_vimeo.dart';

class VimeoRepository {
  final VimeoRemoteService _service;

  VimeoRepository(this._service);

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
}
