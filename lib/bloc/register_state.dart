part of 'register_bloc.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

class EmailPasswordRegistrationLoading extends RegisterState {}

class EmailPasswordRegistrationFailed extends RegisterState {
  final String message;

  EmailPasswordRegistrationFailed(this.message);
}

class EmailPasswordRegistrationSuccessful extends RegisterState {}
