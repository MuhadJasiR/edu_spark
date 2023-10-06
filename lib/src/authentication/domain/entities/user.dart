import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String createdAt;
  final String name;
  final String avatar;

  const User(
      {required this.avatar,
      required this.createdAt,
      required this.id,
      required this.name});

  const User.empty()
      : this(
            avatar: "_empty.avatar",
            createdAt: "_empty.createdAt",
            id: 1,
            name: "_empty.name");

  @override
  List<Object?> get props => [id];
}
