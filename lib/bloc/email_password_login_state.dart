part of 'email_password_login_bloc.dart';

@immutable
sealed class EmailPasswordLoginState {}

final class EmailPasswordLoginInitial extends EmailPasswordLoginState {}

final class EmailPasswordLoginLoading extends EmailPasswordLoginState {}

final class EmailPasswordLoginSuccess extends EmailPasswordLoginState {}

final class EmailPasswordLoginFailure extends EmailPasswordLoginState {
  final String message;

  EmailPasswordLoginFailure(this.message);
}
