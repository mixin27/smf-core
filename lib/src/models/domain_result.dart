import 'package:freezed_annotation/freezed_annotation.dart';

part 'domain_result.freezed.dart';

@freezed
class DomainResult<T> with _$DomainResult<T> {
  const factory DomainResult.noConnection() = _NoConnection<T>;
  const factory DomainResult.result(T result) = _Result<T>;
}
