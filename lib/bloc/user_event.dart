part of 'user_bloc.dart';

sealed class UserEvent {
  const UserEvent();

  // @override
  // List<Object> get props => [];
}


final class GetUserEvent extends UserEvent {

}