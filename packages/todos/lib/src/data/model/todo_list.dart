import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos/src/data/model/todo.dart';
import 'package:todos/todos.dart';

part 'todo_list.freezed.dart';
part 'todo_list.g.dart';

@freezed
class TodoList with _$TodoList implements ITodoList {
  const TodoList._();
  factory TodoList({@Default([]) List<Todo> values}) = _TodoList;

  factory TodoList.fromJson(Map<String, dynamic> json) =>
      _$TodoListFromJson(json);

  @override
  bool get isEmpty => values.isEmpty;

  @override
  int get length => values.length;

  @override
  operator [](int index) => values[index];

  @override
  ITodoList add(final ITodo item) =>
      copyWith(values: [...values, item as Todo]);

  @override
  ITodoList update(ITodo newItem) => copyWith(
      values:
          values.map((x) => x.id == newItem.id ? newItem as Todo : x).toList());

  @override
  ITodoList removeById(int id) =>
      copyWith(values: values.where((x) => x.id != id).toList());

  ITodoList filterByCompleted() =>
      copyWith(values: values.where((x) => x.isCompleted).toList());

  ITodoList filterByIncompleted() =>
      copyWith(values: values.where((x) => !x.isCompleted).toList());
}
