import 'package:dartz/dartz.dart';
import 'package:edu_spark/src/authentication/domain/repositories/auth_repo.dart';
import 'package:edu_spark/src/authentication/domain/usecases/create_user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepo extends Mock implements AuthenticationRepositories {}

void main() {
  late CreateUser useCase;
  late AuthenticationRepositories repositories;

  setUp(() {
    repositories = MockAuthRepo();
    useCase = CreateUser(repositories);
  });

  final params = CreateUserParams.empty();

  test('should call the [AuthRepo.createUser]', () async {
    //Arrange
    when(
      () => repositories.createUser(
          createdAt: any(named: "createdAt"),
          name: any(named: "name"),
          avatar: any(named: "avatar")),
    ).thenAnswer((_) async => const Right(null));
    //stub

    //act

    final result = await useCase(params);

    //assert
    expect(result, equals(const Right<dynamic, void>(null)));
    verify(
      () => repositories.createUser(
          createdAt: params.createdAt,
          name: params.name,
          avatar: params.avatar),
    ).called(1);

    verifyNoMoreInteractions(repositories);
  });
}
