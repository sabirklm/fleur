import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'email_password_login_event.dart';
part 'email_password_login_state.dart';

class EmailPasswordLoginBloc
    extends Bloc<EmailPasswordLoginEvent, EmailPasswordLoginState> {
  EmailPasswordLoginBloc() : super(EmailPasswordLoginInitial()) {
    on<EmailPasswordLoginEventLogin>(
      (event, emit) async {
        emit(EmailPasswordLoginLoading());
        var email = event.email;
        var password = event.password;
        if (email.trim().isEmpty || password.isEmpty) {
          emit(EmailPasswordLoginFailure("Please enter email and password"));
          return;
        }
        final auth = FirebaseAuth.instance;
        try {
          var credentials = await auth.signInWithEmailAndPassword(
              email: email, password: password);
          if (credentials.user != null) {
            emit(EmailPasswordLoginSuccess());
          } else {
            emit(EmailPasswordLoginFailure("Login Failed"));
          }
        } on FirebaseException catch (e) {
          emit(EmailPasswordLoginFailure("Login Failed ${e.message}"));
        }
      },
    );
  }
}
