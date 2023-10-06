import 'package:edu_spark/core/usecase/usecase.dart';
import 'package:edu_spark/core/utils/type_def.dart';
import 'package:edu_spark/src/authentication/domain/repositories/auth_repo.dart';

import '../entities/user.dart';

class GetUsers extends UseCaseWithoutParams<List<User>> {
  const GetUsers(this._repositories);
  final AuthenticationRepositories _repositories;

  @override
  ResultFuture<List<User>> call() async => _repositories.getUser();
}
