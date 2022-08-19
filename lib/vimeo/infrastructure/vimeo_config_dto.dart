import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'vimeo_request_dto.dart';

part 'vimeo_config_dto.freezed.dart';
part 'vimeo_config_dto.g.dart';

/// Vimeo configuration data object.
@freezed
class VimeoConfigDto with _$VimeoConfigDto {
  const VimeoConfigDto._();
  const factory VimeoConfigDto({
    @JsonKey(name: 'request') required VimeoRequestDto request,
  }) = _VimeoConfigDto;

  factory VimeoConfigDto.fromJson(Map<String, dynamic> json) =>
      _$VimeoConfigDtoFromJson(json);
}
