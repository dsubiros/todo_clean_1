import 'package:todo_clean_1/domain/entity/todo.dart';

///  TODO REPOSITORY

/// Here you define what the app can do

abstract class TodoRepo {
  // Get All Todos
  Future<List<Todo>> getAll();

  // Add new Todo
  Future<void> addTodo(Todo newTodo);

  // Update new Todo
  Future<void> updateTodo(Todo newTodo);

  // Toggle a Todo
  Future<void> deleteTodo(Todo todo);

  // Future<void> toggleTodo(Todo todo);
}
