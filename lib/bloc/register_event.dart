part of 'register_bloc.dart';

@immutable
sealed class RegisterEvent {}

class EmailPasswordRegisterEvent extends RegisterEvent {
  final String email;
  final String password;
  final bool isRememberMe;
  final String name;

  EmailPasswordRegisterEvent({
    required this.email,
    required this.password,
    required this.isRememberMe,
    required this.name,
  });
}
