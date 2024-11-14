import 'package:errors/errors.dart';
import 'package:fpdart/fpdart.dart';
import 'package:todos/src/domain/entity/todo_entity.dart';

abstract class ITodosRepository {
  Future<Either<Failure, ITodoList>> getAll();

  Future<Either<Failure, ITodo>> addOne(ITodo item);

  Future<TaskEither<Failure, bool>> saveOne(ITodo item);
  Future<TaskEither<Failure, bool>> deleteOne(ITodo item);
  Future<TaskEither<Failure, ITodo>> getOne();
}
