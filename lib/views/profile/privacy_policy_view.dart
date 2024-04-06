import 'package:fleur/models/about_us.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: ListView(
        children: [
          FutureBuilder(
            future: Future.delayed(Duration(seconds: 3)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mockPrivacyPolicy.companyName ?? "",
                      style: GoogleFonts.sen(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      mockPrivacyPolicy.privacyDescription ?? "",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      mockPrivacyPolicy.cookieUsage ?? "",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      mockPrivacyPolicy.informationCollection ?? "",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      mockPrivacyPolicy.yourRights ?? "",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      mockPrivacyPolicy.changesToPolicy ?? "",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      mockPrivacyPolicy.contactInformation ?? "",
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
