import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_clean_1/data/presentation/todo_cubit.dart';
import 'package:todo_clean_1/domain/entity/todo_entity.dart';
import 'package:todo_clean_1/src/features/todos/logic/provider.dart';
import 'package:todos/todos.dart';

/// Responsible for UI.
///
/// - use BlocBuilder

class TodoView2 extends ConsumerWidget {
  const TodoView2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final todoCubit = context.read<TodoCubit>();

    // return Placeholder();

    // final data = ref.watch(todosProvider.notifier).re();

    return Scaffold(
      // FAB
      // floatingActionButton: FloatingActionButton(
      //     child: const Icon(Icons.add),
      //     onPressed: () => _showAddTodoBox(context)),
      body: Center(
        child: ref.watch(todosProvider).maybeWhen(
              success: (data) => _buildTodoList(data),
              error: (message) => Text(message!),
              orElse: () => CircularProgressIndicator(),
            ),
      ),
    );

    // S C A F F O L D
    // return Scaffold(
    //   // FAB
    //   floatingActionButton: FloatingActionButton(
    //       child: const Icon(Icons.add),
    //       onPressed: () => _showAddTodoBox(context)),
    //   body: BlocBuilder<TodoCubit, List<ITodo>>(
    //     builder: (context, todos) {
    //       // List View
    //       return ListView.builder(
    //         itemCount: todos.length,
    //         itemBuilder: (context, index) {
    //           // Get individual todo
    //           final todo = todos[index];

    //           // List Tile UI
    //           return ListTile(
    //             // Text
    //             title: Text(todo.text),

    //             // Check box
    //             leading: Checkbox(
    //                 value: todo.isCompleted,
    //                 onChanged: (value) => todoCubit.toggleTodo(todo)),

    //             // Delete button
    //             trailing: IconButton(
    //                 onPressed: () => todoCubit.deleteTodo(todo),
    //                 icon: const Icon(Icons.delete)),
    //           );
    //         },
    //       );
    //     },
    //   ),
    // );
  }

  Widget _buildTodoList(ITodoList data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        // Get individual todo
        final todo = data[index];

        // List Tile UI
        return ListTile(
          // Text
          title: Text(todo.text),

          // // Check box
          // leading: Checkbox(
          //     value: todo.isCompleted,
          //     onChanged: (value) => todoCubit.toggleTodo(todo)),

          // // Delete button
          // trailing: IconButton(
          //     onPressed: () => todoCubit.deleteTodo(todo),
          //     icon: const Icon(Icons.delete)),
        );
      },
    );
  }

  // _showAddTodoBox(BuildContext context) {
  //   final todoCubit = context.read<TodoCubit>();
  //   final textController = TextEditingController();

  //   showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //             content: TextField(
  //               controller: textController,
  //             ),
  //             actions: [
  //               // Cancel Button
  //               TextButton(
  //                   onPressed: () => Navigator.of(context).pop(),
  //                   child: const Text('Cancel')),
  //               // Add Button
  //               TextButton(
  //                   onPressed: () {
  //                     todoCubit.addTodo(textController.text);
  //                     Navigator.of(context).pop();
  //                   },
  //                   child: const Text('Add'))
  //             ],
  //           ));
  // }
}
