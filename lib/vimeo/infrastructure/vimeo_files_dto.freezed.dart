// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vimeo_files_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VimeoFilesDto _$VimeoFilesDtoFromJson(Map<String, dynamic> json) {
  return _VimeoFilesDto.fromJson(json);
}

/// @nodoc
mixin _$VimeoFilesDto {
  @JsonKey(name: 'progressive')
  List<VimeoVideoLinkDto> get videoLinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VimeoFilesDtoCopyWith<VimeoFilesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VimeoFilesDtoCopyWith<$Res> {
  factory $VimeoFilesDtoCopyWith(
          VimeoFilesDto value, $Res Function(VimeoFilesDto) then) =
      _$VimeoFilesDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'progressive') List<VimeoVideoLinkDto> videoLinks});
}

/// @nodoc
class _$VimeoFilesDtoCopyWithImpl<$Res>
    implements $VimeoFilesDtoCopyWith<$Res> {
  _$VimeoFilesDtoCopyWithImpl(this._value, this._then);

  final VimeoFilesDto _value;
  // ignore: unused_field
  final $Res Function(VimeoFilesDto) _then;

  @override
  $Res call({
    Object? videoLinks = freezed,
  }) {
    return _then(_value.copyWith(
      videoLinks: videoLinks == freezed
          ? _value.videoLinks
          : videoLinks // ignore: cast_nullable_to_non_nullable
              as List<VimeoVideoLinkDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_VimeoFilesDtoCopyWith<$Res>
    implements $VimeoFilesDtoCopyWith<$Res> {
  factory _$$_VimeoFilesDtoCopyWith(
          _$_VimeoFilesDto value, $Res Function(_$_VimeoFilesDto) then) =
      __$$_VimeoFilesDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'progressive') List<VimeoVideoLinkDto> videoLinks});
}

/// @nodoc
class __$$_VimeoFilesDtoCopyWithImpl<$Res>
    extends _$VimeoFilesDtoCopyWithImpl<$Res>
    implements _$$_VimeoFilesDtoCopyWith<$Res> {
  __$$_VimeoFilesDtoCopyWithImpl(
      _$_VimeoFilesDto _value, $Res Function(_$_VimeoFilesDto) _then)
      : super(_value, (v) => _then(v as _$_VimeoFilesDto));

  @override
  _$_VimeoFilesDto get _value => super._value as _$_VimeoFilesDto;

  @override
  $Res call({
    Object? videoLinks = freezed,
  }) {
    return _then(_$_VimeoFilesDto(
      videoLinks: videoLinks == freezed
          ? _value._videoLinks
          : videoLinks // ignore: cast_nullable_to_non_nullable
              as List<VimeoVideoLinkDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VimeoFilesDto extends _VimeoFilesDto with DiagnosticableTreeMixin {
  const _$_VimeoFilesDto(
      {@JsonKey(name: 'progressive')
          required final List<VimeoVideoLinkDto> videoLinks})
      : _videoLinks = videoLinks,
        super._();

  factory _$_VimeoFilesDto.fromJson(Map<String, dynamic> json) =>
      _$$_VimeoFilesDtoFromJson(json);

  final List<VimeoVideoLinkDto> _videoLinks;
  @override
  @JsonKey(name: 'progressive')
  List<VimeoVideoLinkDto> get videoLinks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoLinks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VimeoFilesDto(videoLinks: $videoLinks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VimeoFilesDto'))
      ..add(DiagnosticsProperty('videoLinks', videoLinks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VimeoFilesDto &&
            const DeepCollectionEquality()
                .equals(other._videoLinks, _videoLinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_videoLinks));

  @JsonKey(ignore: true)
  @override
  _$$_VimeoFilesDtoCopyWith<_$_VimeoFilesDto> get copyWith =>
      __$$_VimeoFilesDtoCopyWithImpl<_$_VimeoFilesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VimeoFilesDtoToJson(
      this,
    );
  }
}

abstract class _VimeoFilesDto extends VimeoFilesDto {
  const factory _VimeoFilesDto(
          {@JsonKey(name: 'progressive')
              required final List<VimeoVideoLinkDto> videoLinks}) =
      _$_VimeoFilesDto;
  const _VimeoFilesDto._() : super._();

  factory _VimeoFilesDto.fromJson(Map<String, dynamic> json) =
      _$_VimeoFilesDto.fromJson;

  @override
  @JsonKey(name: 'progressive')
  List<VimeoVideoLinkDto> get videoLinks;
  @override
  @JsonKey(ignore: true)
  _$$_VimeoFilesDtoCopyWith<_$_VimeoFilesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
