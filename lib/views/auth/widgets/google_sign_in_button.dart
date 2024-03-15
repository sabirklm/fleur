import 'package:fleur/bloc/google_auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../fleur_app_bottom_navigation.dart';
import '../../../utills/sanckbar.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocConsumer<GoogleAuthBloc, GoogleAuthState>(
          builder: (context, state) {
            if (state is GoogleAuthLoading) {
              return const CircleAvatar(
                backgroundColor: Colors.transparent,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(
                    strokeWidth: 1.2,
                  ),
                ),
              );
            }
            return GestureDetector(
              onTap: () {
                context.read<GoogleAuthBloc>().add(SignInWithGoogle());
              },
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    "assets/images/google.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
          listener: (context, state) {
            if (state is GoogleAuthSuccess) {
              Navigator.of(context).popUntil((route) => route.isFirst);
              var route = MaterialPageRoute(
                  builder: (context) => const FleurAppBottomNavigation());
              Navigator.of(context).pushReplacement(route);
              SnackbarUtills.showSnackbar(
                context: context,
                message: "Registration Successful",
              );
            }
            if (state is GoogleAuthFailure) {
              SnackbarUtills.showSnackbar(
                context: context,
                message: state.message,
              );
            }
          },
        )
      ],
    );
  }
}
