/*
DATABASE REPO

This implements the ITodo repo and handles storing, retrieving, updating and
 deleting in Isar db.
*/

import 'package:errors/errors.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todos/src/data/datasource/todos_datasource.dart';
import 'package:todos/src/data/model/todo.dart';
import 'package:todos/src/data/model/todo_isar.dart';
import 'package:todos/src/data/model/todo_list.dart';
import 'package:todos/src/domain/domain.dart';

class TodosIsarDataSourceImpl implements ITodosDataSource {
  static Isar? _database;

  // TodosIsarDataSourceImpl(this._database);

  Future<Isar> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  Future<Isar> _initDatabase() async {
    // Get directory path for storing data
    final dir = await getApplicationDocumentsDirectory();

    // Open Isar database
    final isar = await Isar.open([TodoIsarSchema], directory: dir.path);
    return isar;
  }

  @override
  Future<ITodoList> getAll() async {
    try {
      final db = await database;

      final dbItems = await db.todoIsars.where().findAll();

      final items = TodoList(
        values: dbItems.map((todoIsar) => todoIsar.toDomain() as Todo).toList(),
      );

      return items;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<void> addOne(ITodo newTodo) {
    // TODO: implement addTodo
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteOne(ITodo todo) {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }

  @override
  Future<bool> updateOne(ITodo newTodo) {
    // TODO: implement updateTodo
    throw UnimplementedError();
  }

  // @override
  // // Future<List<ITodo>> getAll() async {
  // Future<List<ITodo>> getAll() async {
  //   final todos = await db.todoIsars.where().findAll();
  //   return todos.map((todoIsar) => todoIsar.toDomain()).toList();
  // }

  // @override
  // Future<void> toggleTodo(ITodo todo) async {
  //   await db.todoIsars.put(todo);
  // }
}
