import 'package:fleur/bloc/user_bloc.dart';
import 'package:fleur/utills/sanckbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../utills/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            // margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              // color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(0),
                  child: BlocConsumer<UserBloc, UserState>(
                    builder: (context, state) {
                      if (state is UserInitial) {
                        return const ProfileLoadingExperimentalShimmer();
                      }
                      if (state is UserLoading) {
                        return const ProfileLoadingExperimentalShimmer();
                      }
                      if (state is UserLoaded) {
                        _emailController.text = state.user.email ?? "";
                        _nameController.text = state.user.name ?? "";
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
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                            // const SizedBox(height: 16),
                            // ClipRRect(
                            //   borderRadius: BorderRadius.circular(8),
                            //   child: TextFormField(
                            //     keyboardType: TextInputType.text,
                            //     textCapitalization:
                            //         TextCapitalization.sentences,
                            //     controller: _nameController,
                            //     decoration: InputDecoration(
                            //       border: InputBorder.none,
                            //       labelText: "Name",
                            //       hintText: "Please enter your name",
                            //       labelStyle: GoogleFonts.sen(
                            //         fontSize: 16,
                            //       ),
                            //       hintStyle: GoogleFonts.sen(
                            //         fontSize: 16,
                            //       ),
                            //       filled: true,
                            //       isDense: true,
                            //       prefixIcon: const Icon(
                            //         Icons.person,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // const SizedBox(
                            //   height: 8,
                            // ),
                            // ClipRRect(
                            //   borderRadius: BorderRadius.circular(8),
                            //   child: TextFormField(
                            //     keyboardType: TextInputType.text,
                            //     textCapitalization:
                            //         TextCapitalization.sentences,
                            //     readOnly: true,
                            //     controller: _emailController,
                            //     decoration: InputDecoration(
                            //       border: InputBorder.none,
                            //       labelText: "Email",
                            //       hintText: "Please enter your email",
                            //       labelStyle: GoogleFonts.sen(
                            //         fontSize: 16,
                            //       ),
                            //       hintStyle: GoogleFonts.sen(
                            //         fontSize: 16,
                            //       ),
                            //       filled: true,
                            //       isDense: true,
                            //       prefixIcon: const Icon(
                            //         Icons.email,
                            //       ),
                            //     ),
                            //   ),
                            // ),
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
                      SnackbarUtills.showSnackbar(
                          context: context, message: "$state");
                    },
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.car_repair),
            title: Text(
              "My Vehicles",
              style: GoogleFonts.sen(
                fontSize: 16,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.car_repair),
            title: Text(
              "My Vehicles",
              style: GoogleFonts.sen(
                fontSize: 16,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.car_repair),
            title: Text(
              "My Vehicles",
              style: GoogleFonts.sen(
                fontSize: 16,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.car_repair),
            title: Text(
              "My Vehicles",
              style: GoogleFonts.sen(
                fontSize: 16,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.settings),
            title: Text(
              "Profile Settings",
              style: GoogleFonts.sen(
                fontSize: 16,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
          // logout rounded button
          MaterialButton(
            onPressed: () {
              //TODO:
            },
            child: Text(
              "Log Out",
              style: GoogleFonts.sen(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileLoadingExperimentalShimmer extends StatelessWidget {
  const ProfileLoadingExperimentalShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Row(
        children: [
          buildCircularShimmer(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buildSquareShimmer(
                    width: 100,
                    height: 20,
                  ),
                ),
                const SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buildSquareShimmer(
                    width: 200,
                    height: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
