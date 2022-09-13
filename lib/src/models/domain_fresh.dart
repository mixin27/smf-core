import 'package:freezed_annotation/freezed_annotation.dart';

part 'domain_fresh.freezed.dart';

/// Wrapper generic class for returning `domain` data from `repository`.
@freezed
class Fresh<T> with _$Fresh<T> {
  // Private constructor
  const Fresh._();

  /// [entity] - generic `data` from repository.
  ///
  /// [isFresh] - boolean value for the [entity] is fresh or not.
  ///
  /// [isNextPageAvailable] - boolean value for next page in pagination.
  const factory Fresh({
    required T entity,
    required bool isFresh,
    bool? isNextPageAvailable,
  }) = _Fresh<T>;

  /// Name constructor with [isFresh] is `true`.
  factory Fresh.yes(
    T entity, {
    bool? isNextPageAvailable,
  }) =>
      Fresh(
        entity: entity,
        isFresh: true,
        isNextPageAvailable: isNextPageAvailable,
      );

  /// Name constructor with [isFresh] is `false`.
  factory Fresh.no(
    T entity, {
    bool? isNextPageAvailable,
  }) =>
      Fresh(
        entity: entity,
        isFresh: false,
        isNextPageAvailable: isNextPageAvailable,
      );
}
