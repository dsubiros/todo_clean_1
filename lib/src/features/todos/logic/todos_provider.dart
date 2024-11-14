import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_clean_1/src/core/state/state.dart';
import 'package:todos/todos.dart';

part 'todos_provider.g.dart';

@riverpod
ITodosDataSource todosDataSource(Ref ref) {
  // Initialize the repo with Isar DB as Data Source
  return TodosIsarDataSourceImpl();
}

@riverpod
ITodosRepository todosRepository(Ref ref) {
  final dataSource = ref.watch(todosDataSourceProvider);

  return TodosRepositoryImpl(
    networkInfo: NetworkInfo(Connectivity()),
    remoteDataSource: dataSource,
  );
}

@riverpod
class Todos extends _$Todos {
  late IGetTodoListUseCase _getTodoListUseCase;
  late IAddTodoUseCase _addTodoUseCase;

  @override
  State<ITodoList> build() {
    _getTodoListUseCase = GetTodoListUseCaseImpl(
      repository: ref.watch(todosRepositoryProvider),
    );
    _addTodoUseCase = AddTodoUseCaseImpl(
      repository: ref.watch(todosRepositoryProvider),
    );

    // Load initial items
    _getTodoList().then((value) => null);

    return State.initial(TodoList());
  }

  void reload() => _getTodoList();

  Future<void> _getTodoList() async {
    state = const State.loading();
    final result = await _getTodoListUseCase.call();

    result.fold(
      (error) => state = State.error(error.message),
      (list) => state = State.success(data: list as TodoList),
    );
  }

  Future<void> add(ITodo item) async {
    final data = state.data;

    state = const State.loading();

    final result = await _addTodoUseCase.call(item);

    result.fold(
      (error) => state = State.error(error.message),
      (dbItem) => state = State.success(data: data!.add(dbItem)),
    );
  }

  // Future<void> delete(ITodo item) async {
  //   state = const State.loading();

  //   final result = wait.
  // }
}
