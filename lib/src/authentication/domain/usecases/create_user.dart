import 'package:edu_spark/core/usecase/usecase.dart';
import 'package:edu_spark/core/utils/type_def.dart';
import 'package:edu_spark/src/authentication/domain/repositories/auth_repo.dart';
import 'package:equatable/equatable.dart';

class CreateUser extends UseCaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repositories);
  final AuthenticationRepositories _repositories;

  @override
  ResultVoid call(CreateUserParams params) async => _repositories.createUser(
        createdAt: params.createdAt,
        name: params.name,
        avatar: params.avatar,
      );
}

class CreateUserParams extends Equatable {
  const CreateUserParams({
    required this.avatar,
    required this.createdAt,
    required this.name,
  });

  const CreateUserParams.empty()
      : this(
            avatar: "_empty.avatar",
            createdAt: "_empty.createdAt",
            name: "_empty.name");

  final String createdAt;
  final String name;
  final String avatar;

  @override
  List<Object?> get props => [createdAt, name, avatar];
}
