import 'package:flutter/material.dart';
import 'package:todo_clean_1/src/features/todos/view/todo_page2.dart';

class MyApp extends StatelessWidget {
  // final ITodoRepo todoRepo;

  // const MyApp({super.key, required this.todoRepo});
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // home: TodoPage(todoRepo: todoRepo),
      home: TodoPage2(),
    );
  }
}
