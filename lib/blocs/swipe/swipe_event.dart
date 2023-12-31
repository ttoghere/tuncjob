part of 'swipe_bloc.dart';

sealed class SwipeEvent extends Equatable {
  const SwipeEvent();

  @override
  List<Object> get props => [];
}

class SwipeLeftEvent extends SwipeEvent {
  final User user;
  const SwipeLeftEvent({required this.user});
  @override
  List<Object> get props => [user];
}

class SwipeRightEvent extends SwipeEvent {
  final User user;
  const SwipeRightEvent({required this.user});
  @override
  List<Object> get props => [user];
}

class LoadUsersEvent extends SwipeEvent {
  final List<User> users;
  const LoadUsersEvent({required this.users});
  @override
  List<Object> get props => [users];
}
