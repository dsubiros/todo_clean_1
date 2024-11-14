import 'package:todo_clean_1/domain/entity/todo_entity.dart';

abstract class ITodosDataSource {
  Future<List<ITodo>> getAll();

  Future<void> addOne(ITodo item);

  Future<bool> saveOne(ITodo item);

  Future<bool> deleteOne(ITodo item);

  // Future<void> toggleTodo(ITodo todo);
}
