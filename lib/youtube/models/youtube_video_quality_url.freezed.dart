// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtube_video_quality_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$YoutubeVideoQualityUrl {
  int get quality => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeVideoQualityUrlCopyWith<YoutubeVideoQualityUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeVideoQualityUrlCopyWith<$Res> {
  factory $YoutubeVideoQualityUrlCopyWith(YoutubeVideoQualityUrl value,
          $Res Function(YoutubeVideoQualityUrl) then) =
      _$YoutubeVideoQualityUrlCopyWithImpl<$Res>;
  $Res call({int quality, String url});
}

/// @nodoc
class _$YoutubeVideoQualityUrlCopyWithImpl<$Res>
    implements $YoutubeVideoQualityUrlCopyWith<$Res> {
  _$YoutubeVideoQualityUrlCopyWithImpl(this._value, this._then);

  final YoutubeVideoQualityUrl _value;
  // ignore: unused_field
  final $Res Function(YoutubeVideoQualityUrl) _then;

  @override
  $Res call({
    Object? quality = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_YoutubeVideoQualityUrlCopyWith<$Res>
    implements $YoutubeVideoQualityUrlCopyWith<$Res> {
  factory _$$_YoutubeVideoQualityUrlCopyWith(_$_YoutubeVideoQualityUrl value,
          $Res Function(_$_YoutubeVideoQualityUrl) then) =
      __$$_YoutubeVideoQualityUrlCopyWithImpl<$Res>;
  @override
  $Res call({int quality, String url});
}

/// @nodoc
class __$$_YoutubeVideoQualityUrlCopyWithImpl<$Res>
    extends _$YoutubeVideoQualityUrlCopyWithImpl<$Res>
    implements _$$_YoutubeVideoQualityUrlCopyWith<$Res> {
  __$$_YoutubeVideoQualityUrlCopyWithImpl(_$_YoutubeVideoQualityUrl _value,
      $Res Function(_$_YoutubeVideoQualityUrl) _then)
      : super(_value, (v) => _then(v as _$_YoutubeVideoQualityUrl));

  @override
  _$_YoutubeVideoQualityUrl get _value =>
      super._value as _$_YoutubeVideoQualityUrl;

  @override
  $Res call({
    Object? quality = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_YoutubeVideoQualityUrl(
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_YoutubeVideoQualityUrl
    with DiagnosticableTreeMixin
    implements _YoutubeVideoQualityUrl {
  const _$_YoutubeVideoQualityUrl({required this.quality, required this.url});

  @override
  final int quality;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'YoutubeVideoQualityUrl(quality: $quality, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'YoutubeVideoQualityUrl'))
      ..add(DiagnosticsProperty('quality', quality))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeVideoQualityUrl &&
            const DeepCollectionEquality().equals(other.quality, quality) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(quality),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_YoutubeVideoQualityUrlCopyWith<_$_YoutubeVideoQualityUrl> get copyWith =>
      __$$_YoutubeVideoQualityUrlCopyWithImpl<_$_YoutubeVideoQualityUrl>(
          this, _$identity);
}

abstract class _YoutubeVideoQualityUrl implements YoutubeVideoQualityUrl {
  const factory _YoutubeVideoQualityUrl(
      {required final int quality,
      required final String url}) = _$_YoutubeVideoQualityUrl;

  @override
  int get quality;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeVideoQualityUrlCopyWith<_$_YoutubeVideoQualityUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
