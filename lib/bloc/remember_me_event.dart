part of 'remember_me_bloc.dart';

@immutable
sealed class RememberMeEvent {}
class RememberMeInitialEvent extends RememberMeEvent {
  final bool isChecked;
  RememberMeInitialEvent(this.isChecked);
}
class RememberMeClickEvent extends RememberMeEvent {
  final bool isChecked;
  RememberMeClickEvent(this.isChecked);
}