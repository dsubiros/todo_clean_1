/*
DATABASE REPO

This implements the ITodo repo and handles storing, retrieving, updating amd
 deleting in Isar db.

*/

import 'package:isar/isar.dart';
import 'package:todo_clean_1/data/models/todo_isar.dart';
import 'package:todo_clean_1/domain/entity/todo.dart';
import 'package:todo_clean_1/domain/entity/todo_entity.dart';
import 'package:todo_clean_1/domain/repository/todo_repo.dart';

class TodoRepoIsar implements ITodoRepo {
  // database
  final Isar db;

  TodoRepoIsar(this.db);

  @override
  Future<List<ITodo>> getAll() async {
    final todos = await db.todoIsars.where().findAll();

    return todos.map((todoIsar) => todoIsar.toDomain()).toList();
  }

  @override
  Future<void> addTodo(ITodo newTodo) async {
    // Convert ITodo into Isar todo
    final todoIsar = TodoIsar.fromDomain(newTodo as Todo);

    // so that we can store it in our db
    return db.writeTxn(() => db.todoIsars.put(todoIsar));
  }

  @override
  Future<void> updateTodo(ITodo todo) async {
    // Convert ITodo into Isar todo
    final todoIsar = TodoIsar.fromDomain(todo as Todo);

    // so that we can store it in our db
    return db.writeTxn(() => db.todoIsars.put(todoIsar));
  }

  @override
  Future<void> deleteTodo(ITodo todo) async {
    await db.writeTxn(() => db.todoIsars.delete(todo.id));
  }

  // @override
  // Future<void> toggleTodo(ITodo todo) async {
  //   await db.todoIsars.put(todo);
  // }
}
