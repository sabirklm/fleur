part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {
  final bool? isAuthenticated;

  AuthInitial({required this.isAuthenticated});

  @override
  String toString() => 'AuthInitial(isAuthenticated: $isAuthenticated)';
}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {}
