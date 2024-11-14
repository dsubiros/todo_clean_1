import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_clean_1/src/core/state/state.dart';
// import 'package:todo_clean_1/data/datasource/todos_datasource.dart';
// import 'package:todo_clean_1/data/repository/todo_repo_isar.dart';
// import 'package:todo_clean_1/data/repository/todo_repo_isar.dart';
// import 'package:todo_clean_1/data/models/todo_isar.dart';
// import 'package:todos/todos.dart' show TodoIsar;
import 'package:todos/todos.dart';

part 'provider.g.dart';

@riverpod
ITodosDataSource todosDataSource(Ref ref) {
  // return;
  // Get directory path for storing data
  // final dir = await getApplicationDocumentsDirectory();

  // Open Isar database
  // final isar = await Isar.open([TodoIsarSchema], directory: dir.path);

  // Initialize the repo with Isar db
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

  // Todos(this._getTodoListUseCase);

  @override
  State<ITodoList> build() {
    _getTodoListUseCase = GetTodoListUseCaseImpl(
      repository: ref.watch(todosRepositoryProvider),
    );

    /// Load initial items
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

  // FutureOr<> build() {
  //   return ;
  // }
}

// final provider = AsyncNotifierProvider.autoDispose
//     .family<TodosNotifier, State, ITodoList>(TodosNotifier.new);

// class TodosNotifier extends FamilyNotifier<State, ITodoList> {
//   @override
//   State<ITodoList> build(arg) {
//     return State.initial(new List.empty() as ITodoList);
//   }
// }


// final provider = AsyncNotifierProvider.autoDispose
//     .family<TodosNotifier, State, ITodoList>(TodosNotifier.new);

// class TodosNotifier extends FamilyNotifier<State, ITodoList> {
//   @override
//   State<ITodoList> build(arg) {
//     return State.initial(new List.empty() as ITodoList);
//   }
// }

// class TodosNotifier extends FamilyNotifier<State, ITodoList> {
//   @override
//   State<ITodoList> build(arg) {
//     return State.initial(new List.empty() as ITodoList);
//   }
// }

// @riverpod
// class Todos extends _$Todos {
//   final IGetTodoListUseCase _getTodoListUseCase;

//   Todos({required IGetTodoListUseCase getTodoListUseCase})
//       : _getTodoListUseCase = getTodoListUseCase;

//   @override
//   State<ITodoList> build({required IGetTodoListUseCase getTodoListUseCase}) {
//     // return List.empty() as ITodoList;
//     return null;
//   }
//   // @override
//   // FutureOr<ITodoList> build() {
//   //   return List.empty() as ITodoList;
//   // }
// }
