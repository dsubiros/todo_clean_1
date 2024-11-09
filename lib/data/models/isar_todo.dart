/*
ISAR TODO MODEL

Converts Todo model into model that we can store in Isar db.

*/

import 'package:isar/isar.dart';
import 'package:todo_clean_1/domain/models/todo.dart';

part 'isar_todo.g.dart';

@collection
class TodoIsar {
  Id id = Isar.autoIncrement;
  late String text;
  late bool isCompleted;

  // convert Isar object => pure Todo object ti yse in our app
  Todo toDomain() {
    return Todo(
      id: id,
      text: text,
      isCompleted: isCompleted,
    );
  }

  // Convert Pure Todo object => Isar Object to store in Isar db
  static TodoIsar fromDomain(Todo todo) {
    return TodoIsar()
      ..id = todo.id
      ..text = todo.text
      ..isCompleted = todo.isCompleted;
  }
}
