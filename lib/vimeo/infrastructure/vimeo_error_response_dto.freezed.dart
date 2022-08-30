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
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'developer_message')
  String? get developerMessage => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'developer_message') String? developerMessage});
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
    Object? error = freezed,
    Object? developerMessage = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      developerMessage: developerMessage == freezed
          ? _value.developerMessage
          : developerMessage // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'developer_message') String? developerMessage});
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
    Object? error = freezed,
    Object? developerMessage = freezed,
  }) {
    return _then(_$_VimeoErrorResponseDto(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      developerMessage: developerMessage == freezed
          ? _value.developerMessage
          : developerMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VimeoErrorResponseDto extends _VimeoErrorResponseDto
    with DiagnosticableTreeMixin {
  const _$_VimeoErrorResponseDto(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'developer_message') this.developerMessage})
      : super._();

  factory _$_VimeoErrorResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_VimeoErrorResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'developer_message')
  final String? developerMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VimeoErrorResponseDto(message: $message, error: $error, developerMessage: $developerMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VimeoErrorResponseDto'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('developerMessage', developerMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VimeoErrorResponseDto &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.developerMessage, developerMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(developerMessage));

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
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'error') final String? error,
          @JsonKey(name: 'developer_message') final String? developerMessage}) =
      _$_VimeoErrorResponseDto;
  const _VimeoErrorResponseDto._() : super._();

  factory _VimeoErrorResponseDto.fromJson(Map<String, dynamic> json) =
      _$_VimeoErrorResponseDto.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(name: 'developer_message')
  String? get developerMessage;
  @override
  @JsonKey(ignore: true)
  _$$_VimeoErrorResponseDtoCopyWith<_$_VimeoErrorResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
