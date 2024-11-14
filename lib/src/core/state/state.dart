// ignore_for_file: public_member_api_docs
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

/// Generic State to use with different models
@freezed
class State<T> with _$State<T> {
  const State._();

  const factory State.initial([T? data]) = _initial<T>;
  const factory State.loading() = _loading;
  const factory State.success({required T data}) = _success<T>;
  const factory State.error([String? message]) = _error;

  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);
  bool get isSuccess => maybeMap(success: (_) => true, orElse: () => false);

  T? get data => maybeWhen(success: (data) => data, orElse: () => null);
}
