part of 'remember_me_bloc.dart';

@immutable
sealed class RememberMeState {}

final class RememberMeInitial extends RememberMeState {
  final bool isChecked;

  RememberMeInitial(this.isChecked);
}

//RememberMeChecked
final class RememberMeChecked extends RememberMeState {
}
//RememberMeUnchecked
final class RememberMeUnchecked extends RememberMeState {
}