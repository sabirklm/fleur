import 'package:firebase_auth/firebase_auth.dart';
import 'package:fleur/views/profile/widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utills/sanckbar.dart';

class AccountInformationScreen extends StatelessWidget {
  const AccountInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Information'),
      ),
      body: ListView(
        children: [
          const ProfileCard(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Account created on ${user?.metadata.creationTime ?? ''}",
                  style: GoogleFonts.sen(),
                ),
                Text(
                  " Last signed in on ${user?.metadata.lastSignInTime ?? ''}",
                  style: GoogleFonts.sen(),
                ),
                // ...List.generate(
                //   user?.providerData.length ?? 0,
                //   (index) => Text(
                //     " ${user?.providerData[index].providerId ?? ''}",
                //     style: GoogleFonts.sen(),
                //   ),
                // ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: MaterialButton(
              onPressed: () {
                SnackbarUtills.showSnackbar(
                    context: context, message: "Comming soon.");
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(color: Colors.red),
              ),
              color: Colors.white,
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                "Delete Account",
                style: GoogleFonts.sen(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
