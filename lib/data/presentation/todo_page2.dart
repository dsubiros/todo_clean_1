import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_clean_1/data/presentation/todo_cubit.dart';
import 'package:todo_clean_1/data/presentation/todo_view.dart';
import 'package:todo_clean_1/data/presentation/todo_view2.dart';
import 'package:todo_clean_1/domain/repository/todo_repo.dart';

/// TODO-PAGE: Responsible for providing Cubit to the view (UI).
///
/// - use BlocProvider

class TodoPage2 extends StatelessWidget {
  // final ITodoRepo todoRepo;

  // const TodoPage2({super.key, required this.todoRepo});
  const TodoPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return TodoView2();
    // return BlocProvider(
    //   create: (context) => TodoCubit(todoRepo),
    //   child: const TodoView(),
    // );
  }
}
