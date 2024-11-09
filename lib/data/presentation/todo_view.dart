import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_clean_1/data/presentation/todo_cubit.dart';
import 'package:todo_clean_1/domain/models/todo.dart';
/**
 * Responsible for UI.
 * 
 * - use BlocBuilder
 */

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    final todoCubit = context.read<TodoCubit>();

    // S C A F F O L D
    return Scaffold(
      // FAB
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => _showAddTodoBox(context)),
      body: BlocBuilder<TodoCubit, List<Todo>>(
        builder: (context, todos) {
          // List View
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              // Get individual todo
              final todo = todos[index];

              // List Tile UI
              return ListTile(
                // Text
                title: Text(todo.text),

                // Check box
                leading: Checkbox(
                    value: todo.isCompleted,
                    onChanged: (value) => todoCubit.toggleTodo(todo)),

                // Delete button
                trailing: IconButton(
                    onPressed: () => todoCubit.deleteTodo(todo),
                    icon: const Icon(Icons.delete)),
              );
            },
          );
        },
      ),
    );
  }

  _showAddTodoBox(BuildContext context) {
    final todoCubit = context.read<TodoCubit>();
    final textController = TextEditingController();

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: TextField(
                controller: textController,
              ),
              actions: [
                // Cancel Button
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel')),
                // Add Button
                TextButton(
                    onPressed: () {
                      todoCubit.addTodo(textController.text);
                      Navigator.of(context).pop();
                    },
                    child: const Text('Add'))
              ],
            ));
  }
}
