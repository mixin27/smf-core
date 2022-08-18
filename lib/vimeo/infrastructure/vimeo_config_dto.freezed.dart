// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vimeo_config_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VimeoConfigDto _$VimeoConfigDtoFromJson(Map<String, dynamic> json) {
  return _VimeoConfigDto.fromJson(json);
}

/// @nodoc
mixin _$VimeoConfigDto {
  @JsonKey(name: 'request')
  VimeoRequestDto get request => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VimeoConfigDtoCopyWith<VimeoConfigDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VimeoConfigDtoCopyWith<$Res> {
  factory $VimeoConfigDtoCopyWith(
          VimeoConfigDto value, $Res Function(VimeoConfigDto) then) =
      _$VimeoConfigDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'request') VimeoRequestDto request});

  $VimeoRequestDtoCopyWith<$Res> get request;
}

/// @nodoc
class _$VimeoConfigDtoCopyWithImpl<$Res>
    implements $VimeoConfigDtoCopyWith<$Res> {
  _$VimeoConfigDtoCopyWithImpl(this._value, this._then);

  final VimeoConfigDto _value;
  // ignore: unused_field
  final $Res Function(VimeoConfigDto) _then;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as VimeoRequestDto,
    ));
  }

  @override
  $VimeoRequestDtoCopyWith<$Res> get request {
    return $VimeoRequestDtoCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc
abstract class _$$_VimeoConfigDtoCopyWith<$Res>
    implements $VimeoConfigDtoCopyWith<$Res> {
  factory _$$_VimeoConfigDtoCopyWith(
          _$_VimeoConfigDto value, $Res Function(_$_VimeoConfigDto) then) =
      __$$_VimeoConfigDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'request') VimeoRequestDto request});

  @override
  $VimeoRequestDtoCopyWith<$Res> get request;
}

/// @nodoc
class __$$_VimeoConfigDtoCopyWithImpl<$Res>
    extends _$VimeoConfigDtoCopyWithImpl<$Res>
    implements _$$_VimeoConfigDtoCopyWith<$Res> {
  __$$_VimeoConfigDtoCopyWithImpl(
      _$_VimeoConfigDto _value, $Res Function(_$_VimeoConfigDto) _then)
      : super(_value, (v) => _then(v as _$_VimeoConfigDto));

  @override
  _$_VimeoConfigDto get _value => super._value as _$_VimeoConfigDto;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$_VimeoConfigDto(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as VimeoRequestDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VimeoConfigDto extends _VimeoConfigDto with DiagnosticableTreeMixin {
  const _$_VimeoConfigDto({@JsonKey(name: 'request') required this.request})
      : super._();

  factory _$_VimeoConfigDto.fromJson(Map<String, dynamic> json) =>
      _$$_VimeoConfigDtoFromJson(json);

  @override
  @JsonKey(name: 'request')
  final VimeoRequestDto request;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VimeoConfigDto(request: $request)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VimeoConfigDto'))
      ..add(DiagnosticsProperty('request', request));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VimeoConfigDto &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$$_VimeoConfigDtoCopyWith<_$_VimeoConfigDto> get copyWith =>
      __$$_VimeoConfigDtoCopyWithImpl<_$_VimeoConfigDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VimeoConfigDtoToJson(
      this,
    );
  }
}

abstract class _VimeoConfigDto extends VimeoConfigDto {
  const factory _VimeoConfigDto(
          {@JsonKey(name: 'request') required final VimeoRequestDto request}) =
      _$_VimeoConfigDto;
  const _VimeoConfigDto._() : super._();

  factory _VimeoConfigDto.fromJson(Map<String, dynamic> json) =
      _$_VimeoConfigDto.fromJson;

  @override
  @JsonKey(name: 'request')
  VimeoRequestDto get request;
  @override
  @JsonKey(ignore: true)
  _$$_VimeoConfigDtoCopyWith<_$_VimeoConfigDto> get copyWith =>
      throw _privateConstructorUsedError;
}
