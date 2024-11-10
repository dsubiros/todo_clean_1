import 'package:todo_clean_1/domain/entity/todo_entity.dart';

abstract class ITodosDataSource {
  Future<List<ITodo>> getAll();

  Future<void> addTodo(ITodo newTodo);

  Future<bool> updateTodo(ITodo newTodo);

  Future<bool> deleteTodo(ITodo todo);

  // Future<void> toggleTodo(ITodo todo);
}
