import 'package:errors/errors.dart';
import 'package:fpdart/fpdart.dart';
import 'package:todos/src/domain/domain.dart';

abstract class IGetTodoListUseCase {
  IGetTodoListUseCase({required ITodosRepository repository});

  Future<Either<Failure, ITodoList>> call();
}

class GetTodoListUseCaseImpl implements IGetTodoListUseCase {
  final ITodosRepository _repository;

  GetTodoListUseCaseImpl({required ITodosRepository repository})
      : _repository = repository;

  @override
  Future<Either<Failure, ITodoList>> call() => _repository.getAll();
}
