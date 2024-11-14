import 'package:todo_clean_1/domain/entity/todo_entity.dart';

///  TODO-REPOSITORY
///
/// Here you define what the app can do

abstract class ITodoRepo {
  // Get All Todos
  Future<List<ITodo>> getAll();

  // Add new ITodo
  Future<void> addTodo(ITodo newTodo);

  // Update new ITodo
  Future<void> updateTodo(ITodo newTodo);

  // Toggle a ITodo
  Future<void> deleteTodo(ITodo todo);

  // Future<void> toggleTodo(ITodo todo);
}
