import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fleur/services/user_service.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import '../models/user.dart' as user;
part 'google_auth_event.dart';
part 'google_auth_state.dart';

class GoogleAuthBloc extends Bloc<GoogleAuthEvent, GoogleAuthState> {
  GoogleAuthBloc() : super(GoogleAuthInitial()) {
    on<SignInWithGoogle>((event, emit) async {
      emit(GoogleAuthLoading());
      // Sign in with Google
      try {
        final credential = await _signInWithGoogle();
        if (credential != null) {
          var isNewUser = credential.additionalUserInfo?.isNewUser ?? false;
          if (isNewUser) {
            await UserService().addUser(
              user.User(
                id: credential.user?.uid,
                email: credential.user?.email,
                name: credential.user?.displayName,
                profilePicture: credential.user?.photoURL,
              ),
            );
          } else {
            //do nothing ....
          }
          emit(GoogleAuthSuccess());
        } else {
          emit(GoogleAuthFailure("Sign in with Google failed!"));
        }
      } catch (e) {
        emit(GoogleAuthFailure("Sign in with Google failed! $e"));
      }
    });
  }

  Future<UserCredential?> _signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();

    final googleAuth = await googleUser?.authentication;

    if (googleAuth == null) {
      return null;
    }

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
