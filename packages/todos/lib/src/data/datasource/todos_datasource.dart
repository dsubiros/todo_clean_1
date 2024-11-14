import 'package:todos/src/domain/domain.dart';

abstract class ITodosDataSource {
  // Future<List<ITodo>> getAll();
  Future<ITodoList> getAll();

  Future<ITodo> addOne(ITodo item);

  Future<bool> updateOne(ITodo item);

  Future<bool> deleteOne(ITodo item);

  // Future<void> toggleTodo(ITodo item);
}
