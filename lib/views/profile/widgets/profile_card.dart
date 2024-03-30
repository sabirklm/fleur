import 'package:fleur/bloc/user_bloc.dart';
import 'package:fleur/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utills/sanckbar.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocConsumer<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserInitial) {
                return const ProfileLoadingExperimentalShimmer();
              }
              if (state is UserLoading) {
                return const ProfileLoadingExperimentalShimmer();
              }
              if (state is UserLoaded) {
                emailController.text = state.user.email ?? "";
                nameController.text = state.user.name ?? "";
                return Column(
                  children: [
                    Row(
                      children: [
                        if (state.user.profilePicture != null)
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                              "${state.user.profilePicture}",
                            ),
                          ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${state.user.name}",
                                      style: GoogleFonts.sen(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "${state.user.email}",
                                      style: GoogleFonts.sen(
                                        fontSize: 14,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    //others details
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }
              if (state is UserError) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      Text(
                        "Something wents wrong.${state.message}",
                        style: GoogleFonts.sen(
                          color: Colors.red,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        key: const Key("profileTryAgainButton"),
                        onPressed: () {
                          context.read<UserBloc>().add(GetUserEvent());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(width, 48),
                        ),
                        child: const Text(
                          "Try Again",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
              return Center(
                child: Text(
                  "Something wents wrong. Please try again later.",
                  style: GoogleFonts.sen(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                ),
              );
            },
            listener: (context, state) {
              SnackbarUtills.showSnackbar(context: context, message: "$state");
            },
          ),
        ],
      ),
    );
  }
}
