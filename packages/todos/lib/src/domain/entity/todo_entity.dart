abstract class IList<T> {
  List<T> get values;

  bool get isEmpty;

  int get length;

  operator [](final int index);
}

abstract class ITodo {
  int get id;
  // TODO: Rename text field into title
  String get text;
  bool get isCompleted;
  // TODO: Add description field
  // String? get description;
}

abstract class ITodoList extends IList<ITodo> {
  @override
  List<ITodo> get values;

  @override
  bool get isEmpty;

  @override
  int get length;

  @override
  operator [](final int index);

  ITodoList add(final ITodo todo);

  ITodoList update(final ITodo newTodo);

  ITodoList removeById(final int id);
}
