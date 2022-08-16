// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paginated_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedData<T> {
  T get entity => throw _privateConstructorUsedError;
  bool? get isNextPageAvailable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedDataCopyWith<T, PaginatedData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDataCopyWith<T, $Res> {
  factory $PaginatedDataCopyWith(
          PaginatedData<T> value, $Res Function(PaginatedData<T>) then) =
      _$PaginatedDataCopyWithImpl<T, $Res>;
  $Res call({T entity, bool? isNextPageAvailable});
}

/// @nodoc
class _$PaginatedDataCopyWithImpl<T, $Res>
    implements $PaginatedDataCopyWith<T, $Res> {
  _$PaginatedDataCopyWithImpl(this._value, this._then);

  final PaginatedData<T> _value;
  // ignore: unused_field
  final $Res Function(PaginatedData<T>) _then;

  @override
  $Res call({
    Object? entity = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
      isNextPageAvailable: isNextPageAvailable == freezed
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaginatedDataCopyWith<T, $Res>
    implements $PaginatedDataCopyWith<T, $Res> {
  factory _$$_PaginatedDataCopyWith(
          _$_PaginatedData<T> value, $Res Function(_$_PaginatedData<T>) then) =
      __$$_PaginatedDataCopyWithImpl<T, $Res>;
  @override
  $Res call({T entity, bool? isNextPageAvailable});
}

/// @nodoc
class __$$_PaginatedDataCopyWithImpl<T, $Res>
    extends _$PaginatedDataCopyWithImpl<T, $Res>
    implements _$$_PaginatedDataCopyWith<T, $Res> {
  __$$_PaginatedDataCopyWithImpl(
      _$_PaginatedData<T> _value, $Res Function(_$_PaginatedData<T>) _then)
      : super(_value, (v) => _then(v as _$_PaginatedData<T>));

  @override
  _$_PaginatedData<T> get _value => super._value as _$_PaginatedData<T>;

  @override
  $Res call({
    Object? entity = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_$_PaginatedData<T>(
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
      isNextPageAvailable: isNextPageAvailable == freezed
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_PaginatedData<T> extends _PaginatedData<T>
    with DiagnosticableTreeMixin {
  const _$_PaginatedData({required this.entity, this.isNextPageAvailable})
      : super._();

  @override
  final T entity;
  @override
  final bool? isNextPageAvailable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedData<$T>(entity: $entity, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginatedData<$T>'))
      ..add(DiagnosticsProperty('entity', entity))
      ..add(DiagnosticsProperty('isNextPageAvailable', isNextPageAvailable));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedData<T> &&
            const DeepCollectionEquality().equals(other.entity, entity) &&
            const DeepCollectionEquality()
                .equals(other.isNextPageAvailable, isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(entity),
      const DeepCollectionEquality().hash(isNextPageAvailable));

  @JsonKey(ignore: true)
  @override
  _$$_PaginatedDataCopyWith<T, _$_PaginatedData<T>> get copyWith =>
      __$$_PaginatedDataCopyWithImpl<T, _$_PaginatedData<T>>(this, _$identity);
}

abstract class _PaginatedData<T> extends PaginatedData<T> {
  const factory _PaginatedData(
      {required final T entity,
      final bool? isNextPageAvailable}) = _$_PaginatedData<T>;
  const _PaginatedData._() : super._();

  @override
  T get entity;
  @override
  bool? get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedDataCopyWith<T, _$_PaginatedData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
