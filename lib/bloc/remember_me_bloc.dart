import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'remember_me_event.dart';
part 'remember_me_state.dart';

class RememberMeBloc extends Bloc<RememberMeEvent, RememberMeState> {
  RememberMeBloc() : super(RememberMeInitial(false)) {
    on<RememberMeClickEvent>(_onClickRememberMe);
  }

  FutureOr<void> _onClickRememberMe(
      RememberMeClickEvent event, Emitter<RememberMeState> emit) {
    if (event.isChecked) {
      emit(RememberMeUnchecked());
    } else {
      emit(RememberMeChecked());
    }
  }
}
