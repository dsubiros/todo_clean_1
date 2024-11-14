/*
ISAR-TODO MODEL

Converts Todo model into model that we can store in Isar db.

*/

import 'package:isar/isar.dart';
import 'package:todos/src/data/model/todo.dart';
import 'package:todos/src/domain/entity/todo_entity.dart';

part 'todo_isar.g.dart';

@collection
class TodoIsar {
  Id id = Isar.autoIncrement;
  late String text;
  late bool isCompleted;

  // convert Isar object => pure Todo object ti yse in our app
  ITodo toDomain() {
    return Todo(
      id: id,
      text: text,
      isCompleted: isCompleted,
    ) as ITodo;
  }

  // Convert Pure Todo object => Isar Object to store in Isar db
  static TodoIsar fromDomain(ITodo todo) {
    return TodoIsar()
      ..id = todo.id
      ..text = todo.text
      ..isCompleted = todo.isCompleted;
  }
}
