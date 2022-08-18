import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:smf_core/smf_core.dart';

class VimeoRemoteService {
  final Dio _dio;

  VimeoRemoteService(this._dio);

  Future<VimeoResponse<List<VimeoVideoLinkDto>>> fetchAllVimeoVideoLinks({
    required String? videoId,
  }) async {
    try {
      final vimeoLink = 'https://player.vimeo.com/video/${videoId!}/config';

      final response = await _dio.get(vimeoLink);

      if (response.statusCode == 200) {
        final config = VimeoConfigDto.fromJson(response.data);
        return VimeoResponse.data(config.request.files.videoLinks);
      } else if (response.statusCode == 403) {
        var jsonData = jsonDecode(response.data) as dynamic;
        throw VimeoApiException(
          code: response.statusCode,
          message: jsonData['message'],
        );
      } else {
        throw VimeoApiException(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (e) {
      if (e.error != null) {
        Logger.logError(
          'VimeoService',
          e.response,
        );
        var errorResponse = e.response != null
            ? VimeoErrorResponseDto.fromJson(e.response?.data)
            : const VimeoErrorResponseDto(message: 'Unknown Error');
        throw VimeoApiException(
          code: e.response?.statusCode,
          message: errorResponse.message,
        );
      } else {
        rethrow;
      }
    }
  }
}
