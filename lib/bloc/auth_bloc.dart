import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial(isAuthenticated: null)) {
    on<CheckAuthStatus>((event, emit) async {
      await Future.delayed(const Duration(seconds: 4));
      var isAuthenticated = true;
      emit(AuthInitial(isAuthenticated: isAuthenticated));
    });
  }
}
