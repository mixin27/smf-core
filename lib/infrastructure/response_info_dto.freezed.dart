// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseInfoDto _$ResponseInfoDtoFromJson(Map<String, dynamic> json) {
  return _ResponseInfoDto.fromJson(json);
}

/// @nodoc
mixin _$ResponseInfoDto {
  @JsonKey(name: 'Code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'Message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseInfoDtoCopyWith<ResponseInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseInfoDtoCopyWith<$Res> {
  factory $ResponseInfoDtoCopyWith(
          ResponseInfoDto value, $Res Function(ResponseInfoDto) then) =
      _$ResponseInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Code') String code,
      @JsonKey(name: 'Message') String message});
}

/// @nodoc
class _$ResponseInfoDtoCopyWithImpl<$Res>
    implements $ResponseInfoDtoCopyWith<$Res> {
  _$ResponseInfoDtoCopyWithImpl(this._value, this._then);

  final ResponseInfoDto _value;
  // ignore: unused_field
  final $Res Function(ResponseInfoDto) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ResponseInfoDtoCopyWith<$Res>
    implements $ResponseInfoDtoCopyWith<$Res> {
  factory _$$_ResponseInfoDtoCopyWith(
          _$_ResponseInfoDto value, $Res Function(_$_ResponseInfoDto) then) =
      __$$_ResponseInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Code') String code,
      @JsonKey(name: 'Message') String message});
}

/// @nodoc
class __$$_ResponseInfoDtoCopyWithImpl<$Res>
    extends _$ResponseInfoDtoCopyWithImpl<$Res>
    implements _$$_ResponseInfoDtoCopyWith<$Res> {
  __$$_ResponseInfoDtoCopyWithImpl(
      _$_ResponseInfoDto _value, $Res Function(_$_ResponseInfoDto) _then)
      : super(_value, (v) => _then(v as _$_ResponseInfoDto));

  @override
  _$_ResponseInfoDto get _value => super._value as _$_ResponseInfoDto;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ResponseInfoDto(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseInfoDto extends _ResponseInfoDto with DiagnosticableTreeMixin {
  const _$_ResponseInfoDto(
      {@JsonKey(name: 'Code') required this.code,
      @JsonKey(name: 'Message') required this.message})
      : super._();

  factory _$_ResponseInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseInfoDtoFromJson(json);

  @override
  @JsonKey(name: 'Code')
  final String code;
  @override
  @JsonKey(name: 'Message')
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseInfoDto(code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseInfoDto'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseInfoDto &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseInfoDtoCopyWith<_$_ResponseInfoDto> get copyWith =>
      __$$_ResponseInfoDtoCopyWithImpl<_$_ResponseInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseInfoDtoToJson(
      this,
    );
  }
}

abstract class _ResponseInfoDto extends ResponseInfoDto {
  const factory _ResponseInfoDto(
          {@JsonKey(name: 'Code') required final String code,
          @JsonKey(name: 'Message') required final String message}) =
      _$_ResponseInfoDto;
  const _ResponseInfoDto._() : super._();

  factory _ResponseInfoDto.fromJson(Map<String, dynamic> json) =
      _$_ResponseInfoDto.fromJson;

  @override
  @JsonKey(name: 'Code')
  String get code;
  @override
  @JsonKey(name: 'Message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseInfoDtoCopyWith<_$_ResponseInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
