import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
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
      await Future.delayed(const Duration(seconds: 1));
      final id = auth.FirebaseAuth.instance.currentUser?.uid;
      if (id == null) {
        emit(const UserError("User not found"));
        return;
      }
      var user = await UserService().getUser(id);
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
