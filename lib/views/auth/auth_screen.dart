import 'package:firebase_auth/firebase_auth.dart';
import 'package:fleur/views/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../fleur_app_bottom_navigation.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance.currentUser;
    return auth == null ? const AuthScreen() : const FleurAppBottomNavigation();
  }
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  void initState() {
    super.initState();
    // context.read<AuthBloc>().add(CheckAuthStatus());
  }

  @override
  Widget build(BuildContext context) {
    //height
    double height = MediaQuery.of(context).size.height;
    //width
    double width = MediaQuery.of(context).size.width;

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Stack(
          children: [
            //https://images.unsplash.com/photo-1515886657613-9f3515b0c78f
            //mock car image url
            //https://images.unsplash.com/photo-1552519507-da3b142c6e3d

            Image.network(
              'https://i.pinimg.com/originals/5d/c4/97/5dc4975b9b03cb321fbaee4ae6d8d3dd.gif',
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
                        "Login to your account",
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
                          keyboardType: TextInputType.emailAddress,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width / 2,
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(0),
                              onTap: () {},
                              leading: Icon(
                                Icons.check_box_outline_blank,
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
                          ),
                          Flexible(
                            child: Text(
                              "Forgot Password?",
                              style: GoogleFonts.sen(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple.shade800,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      MaterialButton(
                        key: const Key("signInButton"),
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
                          "Sign In",
                          style: GoogleFonts.sen(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const FleurAppBottomNavigation(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
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
                            "Don't have an account?",
                            style: GoogleFonts.sen(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          Flexible(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "CREATE NEW ACCOUNT",
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
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
