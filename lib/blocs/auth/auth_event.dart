part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthUserChanged extends AuthEvent {
  final fa.User user;
  const AuthUserChanged({required this.user});
  @override
  List<Object> get props => [user];
}
