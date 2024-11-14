/// Support for doing something awesome.
///
/// More dartdocs go here.
library todos;

export 'package:errors/errors.dart';
// export 'package:network_info/network_info.dart';
export 'package:connectivity_plus/connectivity_plus.dart';

// export 'src/todos_base.dart';
// TODO: Export any libraries intended for clients of this package.

export 'src/domain/domain.dart'
    show
        ITodo,
        ITodoList,
        ITodosRepository,
        IAddTodoUseCase,
        IGetTodoListUseCase,
        AddTodoUseCaseImpl,
        GetTodoListUseCaseImpl;

// export 'src/data/data.dart' show ;