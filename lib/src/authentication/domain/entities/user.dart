import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String createdAt;
  final String name;
  final String avatar;

  User(
      {required this.avatar,
      required this.createdAt,
      required this.id,
      required this.name});

  @override
  List<Object?> get props => [id];
}
