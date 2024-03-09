import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<EmailPasswordRegisterEvent>(_onEmailPasswordRegister);
  }
  Future<void> _onEmailPasswordRegister(
      EmailPasswordRegisterEvent event, Emitter<RegisterState> emit) async {
    final email = event.email;
    final password = event.password;
    final auth = FirebaseAuth.instance;
    emit(EmailPasswordRegistrationLoading());

    try {
      // var userCredentials = await auth.createUserWithEmailAndPassword(
      //     email: email, password: password);
      // if (userCredentials.user != null) {
      //   emit(EmailPasswordRegistrationSuccessful());
      // } else {
      //   emit(EmailPasswordRegistrationFailed());
      // }
      await Future.delayed(const Duration(seconds: 2));
      emit(EmailPasswordRegistrationSuccessful());
      await Future.delayed(const Duration(seconds: 2));
      throw Exception();
    } catch (_) {
      emit(EmailPasswordRegistrationFailed("Something wents wrong"));
    }
  }
}
