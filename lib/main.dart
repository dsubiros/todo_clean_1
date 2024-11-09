import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo_clean_1/data/models/isar_todo.dart';
import 'package:todo_clean_1/data/presentation/todo_page.dart';
import 'package:todo_clean_1/data/repository/isar_todo_repo.dart';
import 'package:todo_clean_1/domain/repository/todo_repo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Get directory path for storing data
  final dir = await getApplicationDocumentsDirectory();

  // Open Isar database
  final isar = await Isar.open([TodoIsarSchema], directory: dir.path);

  // Initialize the repo with Isar db
  final isarTodoRepo = IsarTodoRepo(isar);

  // Run the app
  runApp(MyApp(todoRepo: isarTodoRepo));
}

class MyApp extends StatelessWidget {
  final TodoRepo todoRepo;

  const MyApp({super.key, required this.todoRepo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: TodoPage(todoRepo: todoRepo),
    );
  }
}
