import 'package:smf_core/vimeo/feat_vimeo.dart';

extension DtoListToDomainList on List<VimeoVideoLinkDto> {
  List<VimeoVideoLink> toDomainList() => map((e) => e.toDomain()).toList();
}
