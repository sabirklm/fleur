import 'package:fleur/bloc/register_bloc.dart';
import 'package:fleur/bloc/remember_me_bloc.dart';
import 'package:fleur/utills/sanckbar.dart';
import 'package:fleur/views/auth/widgets/google_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../fleur_app_bottom_navigation.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //height
    double height = MediaQuery.of(context).size.height;
    //width

    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://www.daidegasforum.com/images1/1217/mercedes-sls-black-series-gif.gif',
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 64),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                "👋 Welcome to Fleur.   ",
                style: GoogleFonts.sen(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * .7,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      "Create your account",
                      style: GoogleFonts.sen(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _nameController,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Name",
                          hintText: "Please enter your name",
                          labelStyle: GoogleFonts.sen(
                            fontSize: 16,
                          ),
                          hintStyle: GoogleFonts.sen(
                            fontSize: 16,
                          ),
                          filled: true,
                          isDense: true,
                          prefixIcon: const Icon(
                            Icons.person,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Email",
                          hintText: "Please enter your email",
                          labelStyle: GoogleFonts.sen(
                            fontSize: 16,
                          ),
                          hintStyle: GoogleFonts.sen(
                            fontSize: 16,
                          ),
                          filled: true,
                          isDense: true,
                          prefixIcon: const Icon(
                            Icons.email,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Password",
                          hintText: "Please enter your password",
                          labelStyle: GoogleFonts.sen(
                            fontSize: 16,
                          ),
                          hintStyle: GoogleFonts.sen(
                            fontSize: 16,
                          ),
                          filled: true,
                          isDense: true,
                          prefixIcon: const Icon(
                            Icons.lock,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const RememberMe(),
                    RegisterWithEmailPasswordButton(
                      email: _emailController.text,
                      password: _passwordController.text,
                      name: _nameController.text,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const GoogleSignInButton(),
                        // CircleAvatar(
                        //   backgroundColor: Colors.transparent,
                        //   child: SizedBox(
                        //     height: 100,
                        //     width: 100,
                        //     child: Image.asset(
                        //       "assets/images/google.png",
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        // ),
                        const SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              "assets/images/facebook.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              "assets/images/apple.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Already have an account?",
                          style: GoogleFonts.sen(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                          ),
                        ),
                        Flexible(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Sign In?".toUpperCase(),
                              style: GoogleFonts.sen(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple.shade800,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RegisterWithEmailPasswordButton extends StatelessWidget {
  final String email;
  final String password;
  final String name;

  const RegisterWithEmailPasswordButton({
    super.key,
    required this.email,
    required this.password,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        BlocConsumer<RegisterBloc, RegisterState>(
          builder: (context, state) {
            if (state is! EmailPasswordRegistrationLoading) {
              return MaterialButton(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.purple.shade800,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0.0,
                minWidth: width,
                color: Colors.purple.shade800,
                height: 48,
                child: Text(
                  "Register",
                  style: GoogleFonts.sen(color: Colors.white),
                ),
                onPressed: () {
                  var rememberMe =
                      context.read<RememberMeBloc>().state is RememberMeChecked;

                  context.read<RegisterBloc>().add(
                        EmailPasswordRegisterEvent(
                          email: email,
                          password: password,
                          isRememberMe: rememberMe,
                          name: name,
                        ),
                      );
                },
              );
            }

            return const CircularProgressIndicator(
              color: Colors.purple,
              strokeWidth: 1.0,
            );
          },
          listener: (context, state) {
            if (state is EmailPasswordRegistrationSuccessful) {
              Navigator.of(context).popUntil((route) => route.isFirst);
              var route = MaterialPageRoute(
                  builder: (context) => const FleurAppBottomNavigation());
              Navigator.of(context).pushReplacement(route);
              SnackbarUtills.showSnackbar(
                context: context,
                message: "Registration Successful",
              );
            }

            if (state is EmailPasswordRegistrationFailed) {
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

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BlocConsumer<RememberMeBloc, RememberMeState>(
          builder: (context, state) {
            return SizedBox(
              width: width / 2,
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                onTap: () {
                  context.read<RememberMeBloc>().add(
                        RememberMeClickEvent(state is RememberMeChecked),
                      );
                },
                leading: Icon(
                  (state is RememberMeChecked)
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                  color: Colors.purple.shade800,
                ),
                title: Text(
                  "Remember me",
                  style: GoogleFonts.sen(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade800,
                  ),
                ),
              ),
            );
          },
          listener: (context, state) {},
        ),
      ],
    );
  }
}
