// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vimeo_video_link_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VimeoVideoLinkDto _$VimeoVideoLinkDtoFromJson(Map<String, dynamic> json) {
  return _VimeoVideoLinkDto.fromJson(json);
}

/// @nodoc
mixin _$VimeoVideoLinkDto {
  String get id => throw _privateConstructorUsedError;
  String get mime => throw _privateConstructorUsedError;
  int get fps => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get quality => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VimeoVideoLinkDtoCopyWith<VimeoVideoLinkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VimeoVideoLinkDtoCopyWith<$Res> {
  factory $VimeoVideoLinkDtoCopyWith(
          VimeoVideoLinkDto value, $Res Function(VimeoVideoLinkDto) then) =
      _$VimeoVideoLinkDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String mime,
      int fps,
      String url,
      String quality,
      int height});
}

/// @nodoc
class _$VimeoVideoLinkDtoCopyWithImpl<$Res>
    implements $VimeoVideoLinkDtoCopyWith<$Res> {
  _$VimeoVideoLinkDtoCopyWithImpl(this._value, this._then);

  final VimeoVideoLinkDto _value;
  // ignore: unused_field
  final $Res Function(VimeoVideoLinkDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? mime = freezed,
    Object? fps = freezed,
    Object? url = freezed,
    Object? quality = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mime: mime == freezed
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String,
      fps: fps == freezed
          ? _value.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_VimeoVideoLinkDtoCopyWith<$Res>
    implements $VimeoVideoLinkDtoCopyWith<$Res> {
  factory _$$_VimeoVideoLinkDtoCopyWith(_$_VimeoVideoLinkDto value,
          $Res Function(_$_VimeoVideoLinkDto) then) =
      __$$_VimeoVideoLinkDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String mime,
      int fps,
      String url,
      String quality,
      int height});
}

/// @nodoc
class __$$_VimeoVideoLinkDtoCopyWithImpl<$Res>
    extends _$VimeoVideoLinkDtoCopyWithImpl<$Res>
    implements _$$_VimeoVideoLinkDtoCopyWith<$Res> {
  __$$_VimeoVideoLinkDtoCopyWithImpl(
      _$_VimeoVideoLinkDto _value, $Res Function(_$_VimeoVideoLinkDto) _then)
      : super(_value, (v) => _then(v as _$_VimeoVideoLinkDto));

  @override
  _$_VimeoVideoLinkDto get _value => super._value as _$_VimeoVideoLinkDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? mime = freezed,
    Object? fps = freezed,
    Object? url = freezed,
    Object? quality = freezed,
    Object? height = freezed,
  }) {
    return _then(_$_VimeoVideoLinkDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mime: mime == freezed
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String,
      fps: fps == freezed
          ? _value.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VimeoVideoLinkDto extends _VimeoVideoLinkDto
    with DiagnosticableTreeMixin {
  const _$_VimeoVideoLinkDto(
      {required this.id,
      required this.mime,
      required this.fps,
      required this.url,
      required this.quality,
      required this.height})
      : super._();

  factory _$_VimeoVideoLinkDto.fromJson(Map<String, dynamic> json) =>
      _$$_VimeoVideoLinkDtoFromJson(json);

  @override
  final String id;
  @override
  final String mime;
  @override
  final int fps;
  @override
  final String url;
  @override
  final String quality;
  @override
  final int height;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VimeoVideoLinkDto(id: $id, mime: $mime, fps: $fps, url: $url, quality: $quality, height: $height)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VimeoVideoLinkDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('mime', mime))
      ..add(DiagnosticsProperty('fps', fps))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('quality', quality))
      ..add(DiagnosticsProperty('height', height));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VimeoVideoLinkDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.mime, mime) &&
            const DeepCollectionEquality().equals(other.fps, fps) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.quality, quality) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(mime),
      const DeepCollectionEquality().hash(fps),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(quality),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$$_VimeoVideoLinkDtoCopyWith<_$_VimeoVideoLinkDto> get copyWith =>
      __$$_VimeoVideoLinkDtoCopyWithImpl<_$_VimeoVideoLinkDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VimeoVideoLinkDtoToJson(
      this,
    );
  }
}

abstract class _VimeoVideoLinkDto extends VimeoVideoLinkDto {
  const factory _VimeoVideoLinkDto(
      {required final String id,
      required final String mime,
      required final int fps,
      required final String url,
      required final String quality,
      required final int height}) = _$_VimeoVideoLinkDto;
  const _VimeoVideoLinkDto._() : super._();

  factory _VimeoVideoLinkDto.fromJson(Map<String, dynamic> json) =
      _$_VimeoVideoLinkDto.fromJson;

  @override
  String get id;
  @override
  String get mime;
  @override
  int get fps;
  @override
  String get url;
  @override
  String get quality;
  @override
  int get height;
  @override
  @JsonKey(ignore: true)
  _$$_VimeoVideoLinkDtoCopyWith<_$_VimeoVideoLinkDto> get copyWith =>
      throw _privateConstructorUsedError;
}
