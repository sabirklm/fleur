part of 'email_password_login_bloc.dart';

@immutable
sealed class EmailPasswordLoginEvent {}

class EmailPasswordLoginEventLogin extends EmailPasswordLoginEvent {
  final String email;
  final String password;

  EmailPasswordLoginEventLogin({
    required this.email,
    required this.password,
  });
}