import 'package:errors/errors.dart';
import 'package:fpdart/fpdart.dart';
import 'package:network_info/network_info.dart';
import 'package:todos/src/data/datasource/todos_datasource.dart';
import 'package:todos/src/domain/domain.dart';

class TodosRepositoryImpl implements ITodosRepository {
  final ITodosDataSource _remoteDataSource;
  final INetworkInfo _networkInfo;

  TodosRepositoryImpl(
      {required ITodosDataSource remoteDataSource,
      required INetworkInfo networkInfo})
      : _remoteDataSource = remoteDataSource,
        _networkInfo = networkInfo;

  @override
  Future<Either<Failure, ITodoList>> getAll() async {
    try {
      final result = await _remoteDataSource.getAll();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, ITodo>> addOne(ITodo item) async {
    try {
      final result = await _remoteDataSource.addOne(item);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<TaskEither<Failure, bool>> deleteOne(ITodo item) {
    // TODO: implement deleteOne
    throw UnimplementedError();
  }

  @override
  Future<TaskEither<Failure, ITodo>> getOne() {
    // TODO: implement getOne
    throw UnimplementedError();
  }

  @override
  Future<TaskEither<Failure, bool>> saveOne(ITodo item) {
    // TODO: implement saveOne
    throw UnimplementedError();
  }
}
