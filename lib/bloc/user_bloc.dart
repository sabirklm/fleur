import 'package:bloc/bloc.dart';
import 'package:fleur/services/user_service.dart';

import '../models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<GetUserEvent>(_getUser);
  }
  _getUser(GetUserEvent event, Emitter<UserState> emit) async {
    try {
      emit(UserLoading());
      await Future.delayed(const Duration(seconds: 1)); //uwfb677VOD4C0emOa5ph
      var user = await UserService().getUser("uwfb677VOD4C0emOa5ph-12");
      if (user == null) {
        emit(const UserError("User not found"));
        return;
      }
      emit(UserLoaded(user: user));
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
}
