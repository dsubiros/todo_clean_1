import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_clean_1/domain/entity/todo_entity.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

///
/// TODO-MODEL
///

@freezed
class Todo with _$Todo implements ITodo {
  const Todo._();

  factory Todo({
    required int id,
    required String text,
    required bool isCompleted,
  }) = _Todo;

  /// Convert a JSON object into an [Store] instance.
  /// This enables type-safe reading of the API response.
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  Todo toggleCompletion() => copyWith(isCompleted: !isCompleted);
}
