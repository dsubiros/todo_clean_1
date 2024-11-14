// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';

///Abstract class that models the most common failures scenarios of app
// abstract class Failure extends Equatable {
abstract class Failure {
  // @override
  // List<Object> get props => [];

  String? get message;

  // Failure(this.message);

  // @override
  // String toString() => '$message';
}

/// Server Failure
class ServerFailure extends Failure {
  ServerFailure({this.message});

  @override
  final String? message;

  // @override
  // String? get message => '$message';
}

/// Cache Failure
class CacheFailure extends Failure {
  CacheFailure({message});

  @override
  String? get message => message;
}
