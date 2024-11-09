import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_clean_1/data/presentation/todo_cubit.dart';
import 'package:todo_clean_1/data/presentation/todo_view.dart';
import 'package:todo_clean_1/domain/repository/todo_repo.dart';

/**
 * TODO PAGE: Responsible for providing Cubit to the view (UI).
 * 
 * - use BlocProvider
 */

class TodoPage extends StatelessWidget {
  final TodoRepo todoRepo;

  const TodoPage({super.key, required this.todoRepo});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(todoRepo),
      child: const TodoView(),
    );
  }
}
