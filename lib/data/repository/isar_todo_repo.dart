/*
DATABASE REPO

This implements the Todo repo and handles storing, retrieving, updating amd
 deleting in Isar db.

*/

import 'package:isar/isar.dart';
import 'package:todo_clean_1/data/models/isar_todo.dart';
import 'package:todo_clean_1/domain/models/todo.dart';
import 'package:todo_clean_1/domain/repository/todo_repo.dart';

class IsarTodoRepo implements TodoRepo {
  // database
  final Isar db;

  IsarTodoRepo(this.db);

  @override
  Future<List<Todo>> getAll() async {
    final todos = await db.todoIsars.where().findAll();

    return todos.map((todoIsar) => todoIsar.toDomain()).toList();
  }

  @override
  Future<void> addTodo(Todo newTodo) async {
    // Convert Todo into Isar todo
    final todoIsar = TodoIsar.fromDomain(newTodo);

    // so that we can store it in our db
    return db.writeTxn(() => db.todoIsars.put(todoIsar));
  }

  @override
  Future<void> updateTodo(Todo todo) async {
    // Convert Todo into Isar todo
    final todoIsar = TodoIsar.fromDomain(todo);

    // so that we can store it in our db
    return db.writeTxn(() => db.todoIsars.put(todoIsar));
  }

  @override
  Future<void> deleteTodo(Todo todo) async {
    await db.writeTxn(() => db.todoIsars.delete(todo.id));
  }

  // @override
  // Future<void> toggleTodo(Todo todo) async {
  //   await db.todoIsars.put(todo);
  // }
}
