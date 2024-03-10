part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class EmailPasswordLoginEvent extends LoginEvent {
  final String email;
  final String password;
  final bool isRememberMe;

  EmailPasswordLoginEvent({
    required this.email,
    required this.password,
    required this.isRememberMe,
  });
}
