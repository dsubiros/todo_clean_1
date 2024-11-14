import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_clean_1/domain/entity/todo.dart';
import 'package:todo_clean_1/domain/repository/todo_repo.dart';

/*

TODO CUBIT - Simple state mgmt

Each Cubit is a list of Todos

*/

class TodoCubit extends Cubit<List<Todo>> {
  // Reference Todo Repo
  final TodoRepo todoRepo;

  TodoCubit(this.todoRepo) : super([]) {
    loadTodos();
  }

  // L O A D
  Future<void> loadTodos() async {
    final todoList = await todoRepo.getAll();

    // Emit the fetched list as the new state
    emit(todoList);
  }

  // A D D
  Future<void> addTodo(String text) async {
    final newTodo = Todo(
      id: DateTime.now().millisecondsSinceEpoch,
      text: text,
      isCompleted: false,
    );

    await todoRepo.addTodo(newTodo);

    // Re-load
    loadTodos();
  }

  // D E L E T E

  Future<void> deleteTodo(Todo todo) async {
    await todoRepo.deleteTodo(todo);

    // Re-load
    loadTodos();
  }

  // T O G G L E

  Future<void> toggleTodo(Todo todo) async {
    final updatedTodo = todo.toggleCompletion();

    await todoRepo.updateTodo(updatedTodo);

    // Re-load
    loadTodos();
  }
}
