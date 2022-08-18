// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vimeo_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VimeoRequestDto _$VimeoRequestDtoFromJson(Map<String, dynamic> json) {
  return _VimeoRequestDto.fromJson(json);
}

/// @nodoc
mixin _$VimeoRequestDto {
  @JsonKey(name: 'files')
  VimeoFilesDto get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VimeoRequestDtoCopyWith<VimeoRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VimeoRequestDtoCopyWith<$Res> {
  factory $VimeoRequestDtoCopyWith(
          VimeoRequestDto value, $Res Function(VimeoRequestDto) then) =
      _$VimeoRequestDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'files') VimeoFilesDto files});

  $VimeoFilesDtoCopyWith<$Res> get files;
}

/// @nodoc
class _$VimeoRequestDtoCopyWithImpl<$Res>
    implements $VimeoRequestDtoCopyWith<$Res> {
  _$VimeoRequestDtoCopyWithImpl(this._value, this._then);

  final VimeoRequestDto _value;
  // ignore: unused_field
  final $Res Function(VimeoRequestDto) _then;

  @override
  $Res call({
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as VimeoFilesDto,
    ));
  }

  @override
  $VimeoFilesDtoCopyWith<$Res> get files {
    return $VimeoFilesDtoCopyWith<$Res>(_value.files, (value) {
      return _then(_value.copyWith(files: value));
    });
  }
}

/// @nodoc
abstract class _$$_VimeoRequestDtoCopyWith<$Res>
    implements $VimeoRequestDtoCopyWith<$Res> {
  factory _$$_VimeoRequestDtoCopyWith(
          _$_VimeoRequestDto value, $Res Function(_$_VimeoRequestDto) then) =
      __$$_VimeoRequestDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'files') VimeoFilesDto files});

  @override
  $VimeoFilesDtoCopyWith<$Res> get files;
}

/// @nodoc
class __$$_VimeoRequestDtoCopyWithImpl<$Res>
    extends _$VimeoRequestDtoCopyWithImpl<$Res>
    implements _$$_VimeoRequestDtoCopyWith<$Res> {
  __$$_VimeoRequestDtoCopyWithImpl(
      _$_VimeoRequestDto _value, $Res Function(_$_VimeoRequestDto) _then)
      : super(_value, (v) => _then(v as _$_VimeoRequestDto));

  @override
  _$_VimeoRequestDto get _value => super._value as _$_VimeoRequestDto;

  @override
  $Res call({
    Object? files = freezed,
  }) {
    return _then(_$_VimeoRequestDto(
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as VimeoFilesDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VimeoRequestDto extends _VimeoRequestDto with DiagnosticableTreeMixin {
  const _$_VimeoRequestDto({@JsonKey(name: 'files') required this.files})
      : super._();

  factory _$_VimeoRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_VimeoRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'files')
  final VimeoFilesDto files;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VimeoRequestDto(files: $files)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VimeoRequestDto'))
      ..add(DiagnosticsProperty('files', files));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VimeoRequestDto &&
            const DeepCollectionEquality().equals(other.files, files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(files));

  @JsonKey(ignore: true)
  @override
  _$$_VimeoRequestDtoCopyWith<_$_VimeoRequestDto> get copyWith =>
      __$$_VimeoRequestDtoCopyWithImpl<_$_VimeoRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VimeoRequestDtoToJson(
      this,
    );
  }
}

abstract class _VimeoRequestDto extends VimeoRequestDto {
  const factory _VimeoRequestDto(
          {@JsonKey(name: 'files') required final VimeoFilesDto files}) =
      _$_VimeoRequestDto;
  const _VimeoRequestDto._() : super._();

  factory _VimeoRequestDto.fromJson(Map<String, dynamic> json) =
      _$_VimeoRequestDto.fromJson;

  @override
  @JsonKey(name: 'files')
  VimeoFilesDto get files;
  @override
  @JsonKey(ignore: true)
  _$$_VimeoRequestDtoCopyWith<_$_VimeoRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
