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
  bool get completed;
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

  ITodoList addValue(final ITodo todo);

  ITodoList updateValue(final ITodo newTodo);

  ITodoList removeValueById(final int id);
}
