// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vimeo_error_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VimeoErrorResponseDto _$VimeoErrorResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _VimeoErrorResponseDto.fromJson(json);
}

/// @nodoc
mixin _$VimeoErrorResponseDto {
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VimeoErrorResponseDtoCopyWith<VimeoErrorResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VimeoErrorResponseDtoCopyWith<$Res> {
  factory $VimeoErrorResponseDtoCopyWith(VimeoErrorResponseDto value,
          $Res Function(VimeoErrorResponseDto) then) =
      _$VimeoErrorResponseDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class _$VimeoErrorResponseDtoCopyWithImpl<$Res>
    implements $VimeoErrorResponseDtoCopyWith<$Res> {
  _$VimeoErrorResponseDtoCopyWithImpl(this._value, this._then);

  final VimeoErrorResponseDto _value;
  // ignore: unused_field
  final $Res Function(VimeoErrorResponseDto) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VimeoErrorResponseDtoCopyWith<$Res>
    implements $VimeoErrorResponseDtoCopyWith<$Res> {
  factory _$$_VimeoErrorResponseDtoCopyWith(_$_VimeoErrorResponseDto value,
          $Res Function(_$_VimeoErrorResponseDto) then) =
      __$$_VimeoErrorResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$_VimeoErrorResponseDtoCopyWithImpl<$Res>
    extends _$VimeoErrorResponseDtoCopyWithImpl<$Res>
    implements _$$_VimeoErrorResponseDtoCopyWith<$Res> {
  __$$_VimeoErrorResponseDtoCopyWithImpl(_$_VimeoErrorResponseDto _value,
      $Res Function(_$_VimeoErrorResponseDto) _then)
      : super(_value, (v) => _then(v as _$_VimeoErrorResponseDto));

  @override
  _$_VimeoErrorResponseDto get _value =>
      super._value as _$_VimeoErrorResponseDto;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_VimeoErrorResponseDto(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VimeoErrorResponseDto extends _VimeoErrorResponseDto
    with DiagnosticableTreeMixin {
  const _$_VimeoErrorResponseDto(
      {@JsonKey(name: 'message') required this.message})
      : super._();

  factory _$_VimeoErrorResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_VimeoErrorResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VimeoErrorResponseDto(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VimeoErrorResponseDto'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VimeoErrorResponseDto &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_VimeoErrorResponseDtoCopyWith<_$_VimeoErrorResponseDto> get copyWith =>
      __$$_VimeoErrorResponseDtoCopyWithImpl<_$_VimeoErrorResponseDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VimeoErrorResponseDtoToJson(
      this,
    );
  }
}

abstract class _VimeoErrorResponseDto extends VimeoErrorResponseDto {
  const factory _VimeoErrorResponseDto(
          {@JsonKey(name: 'message') required final String message}) =
      _$_VimeoErrorResponseDto;
  const _VimeoErrorResponseDto._() : super._();

  factory _VimeoErrorResponseDto.fromJson(Map<String, dynamic> json) =
      _$_VimeoErrorResponseDto.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_VimeoErrorResponseDtoCopyWith<_$_VimeoErrorResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
