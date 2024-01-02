part of 'swipe_bloc.dart';

sealed class SwipeEvent extends Equatable {
  const SwipeEvent();

  @override
  List<Object> get props => [];
}

class SwipeLeft extends SwipeEvent {
  final User user;
  const SwipeLeft({required this.user});
  @override
  List<Object> get props => [user];
}

class SwipeRight extends SwipeEvent {
  final User user;
  const SwipeRight({required this.user});
  @override
  List<Object> get props => [user];
}

class LoadUsers extends SwipeEvent {
  final List<User> users;
  const LoadUsers({required this.users});
  @override
  List<Object> get props => [users];
}
