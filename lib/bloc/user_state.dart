part of 'user_bloc.dart';

sealed class UserState {
  const UserState();

  // @override
  // List<Object> get props => [];
}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class UserLoaded extends UserState {
  final User user;
  const UserLoaded({required this.user});
}

final class UserError extends UserState {
  final String message;
  const UserError(this.message);
}
