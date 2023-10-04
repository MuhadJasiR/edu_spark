import 'package:edu_spark/core/utils/type_def.dart';
import 'package:edu_spark/src/authentication/domain/entities/user.dart';

abstract class AuthenticationRepositories {
  const AuthenticationRepositories();

  ResultVoid createUser(
      {required String createdAt,
      required String name,
      required String avatar});

  ResultFuture<List<User>> getUser();
}
