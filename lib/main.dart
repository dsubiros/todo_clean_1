import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_clean_1/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Get directory path for storing data
  // final dir = await getApplicationDocumentsDirectory();

  // Open Isar database
  // final isar = await Isar.open([TodoIsarSchema], directory: dir.path);

  // // Initialize the repo with Isar db
  // final isarTodoRepo = TodoRepoIsar(isar);

  // Run the app
  // runApp(MyApp(todoRepo: isarTodoRepo));
  runApp(const ProviderScope(child: MyApp()));
}
