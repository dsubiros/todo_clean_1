import 'package:errors/errors.dart';
import 'package:fpdart/fpdart.dart';
import 'package:todos/src/domain/domain.dart';

abstract class IAddTodoUseCase {
  IAddTodoUseCase({required ITodosRepository repository});

  Future<Either<Failure, ITodo>> call(ITodo item);
}

class AddTodoUseCaseImpl implements IAddTodoUseCase {
  final ITodosRepository _repository;

  AddTodoUseCaseImpl({required ITodosRepository repository})
      : _repository = repository;

  @override
  Future<Either<Failure, ITodo>> call(ITodo item) => _repository.addOne(item);
}
