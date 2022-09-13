import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_data.freezed.dart';

/// Wrapper generic class for returning `domain` data from `repository`
/// with pagination support.
@freezed
class PaginatedData<T> with _$PaginatedData<T> {
  const PaginatedData._();
  const factory PaginatedData({
    required T entity,
    bool? isNextPageAvailable,
  }) = _PaginatedData<T>;
}
