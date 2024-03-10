import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fleur/services/user_service.dart';
import 'package:meta/meta.dart';
import '../models/user.dart' as user;
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
    if (email.trim().isEmpty || password.isEmpty) {
      emit(EmailPasswordRegistrationFailed(
          "Please enter your email and password"));
      return;
    }
    emit(EmailPasswordRegistrationLoading());

    try {
      var userCredentials = await auth.createUserWithEmailAndPassword(
          email: email.toLowerCase(), password: password);
      if (userCredentials.user != null) {
        emit(EmailPasswordRegistrationSuccessful());
      } else {
        emit(EmailPasswordRegistrationFailed("Something wents wrong"));
      }
      await UserService().addUser(
        user.User(
          id: userCredentials.user!.uid,
          email: email.toLowerCase(),
          name: event.name,
        ),
      );
      emit(EmailPasswordRegistrationSuccessful());
      await Future.delayed(const Duration(seconds: 2));
      throw Exception();
    } on FirebaseAuthException catch (e) {
      emit(EmailPasswordRegistrationFailed(
          "Something wents wrong. ${e.message}"));
    }
  }
}
