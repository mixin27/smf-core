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
      Logger.logError('VimeoRemoteService', e);
      if (e.isNoConnectionError) {
        throw VimeoApiException(
          code: e.response?.statusCode,
          message: 'No internet connection.',
        );
      } else if (e.error != null) {
        Logger.logError(
          'VimeoRemoteService',
          'errorResponse = ${e.response?.data}',
        );
        var errorResponse = e.response != null
            ? VimeoErrorResponseDto.fromJson(e.response?.data)
            : const VimeoErrorResponseDto(message: 'Unknown Error!');
        throw VimeoApiException(
          code: e.response?.statusCode,
          message: errorResponse.message,
        );
      } else {
        rethrow;
      }
    }
  }

  Future<VimeoResponse<VimeoLinkInfoDto>> fetchVimeoInfoFromUrl({
    required String url,
  }) async {
    final link = 'https://vimeo.com/api/oembed.json?url=$url';

    Logger.logInfo(
      'VimeoRemoteService',
      'vimeoLink = $link',
    );
    try {
      final response = await _dio.get(link);

      if (response.statusCode == 200) {
        final info = VimeoLinkInfoDto.fromJson(response.data as dynamic);
        return VimeoResponse.data(info);
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
      Logger.logError('VimeoRemoteService', e);
      if (e.isNoConnectionError) {
        throw VimeoApiException(
          code: e.response?.statusCode,
          message: 'No internet connection.',
        );
      } else if (e.error != null) {
        Logger.logError(
          'VimeoRemoteService',
          'errorResponse = ${e.response?.data}',
        );
        var errorResponse = e.response != null
            ? VimeoErrorResponseDto.fromJson(e.response?.data)
            : const VimeoErrorResponseDto(message: 'Unknown Error!');
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
