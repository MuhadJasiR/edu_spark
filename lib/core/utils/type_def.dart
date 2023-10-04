import 'package:dartz/dartz.dart';
import 'package:edu_spark/core/errors/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultVoid = ResultFuture<void>;
