part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}


final class CheckAuthStatus extends AuthEvent {
  
}