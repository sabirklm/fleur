import 'package:fleur/utills/sanckbar.dart';
import 'package:fleur/views/profile/about_us_view.dart';
import 'package:fleur/views/profile/account_information_screen.dart';
import 'package:fleur/views/profile/feedback_view.dart';
import 'package:fleur/views/profile/help_and_support_view.dart';
import 'package:fleur/views/profile/my_vehicle_screen.dart';
import 'package:fleur/views/profile/notification_view.dart';
import 'package:fleur/views/profile/privacy_policy_view.dart';
import 'package:fleur/views/profile/setting_view.dart';
import 'package:fleur/views/profile/subscription_view.dart';
import 'package:fleur/views/profile/terms_of_service_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../models/menu_item.dart';
import '../../utills/styles.dart';
import 'widgets/profile_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: ProfileCard(),
          ),
          ...List.generate(
            profileItems.length,
            (index) => ListTile(
              onTap: () {
                var itemType = profileItems[index].type;
                if (itemType == "licenses") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LicensePage(),
                    ),
                  );
                  return;
                }
                if (itemType == "account_info") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AccountInformationScreen(),
                    ),
                  );
                  return;
                }
                if (itemType == "my_car") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyVehicleScreen(),
                    ),
                  );
                }
                if (itemType == "help_support") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HelpAndSupportView(),
                    ),
                  );
                }
                if (itemType == "notifications") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationView(),
                    ),
                  );
                }
                if (itemType == "subscription") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SubscriptionView(),
                    ),
                  );
                }
                //
                if (itemType == "settings") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingView(),
                    ),
                  );
                }
                //feedback
                if (itemType == "feedback") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FeedbackView(),
                    ),
                  );
                }
                if (itemType == "privacy_policy") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyView(),
                    ),
                  );
                }
                //terms_of_service
                if (itemType == "terms_of_service") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TermsOfServiceView(),
                    ),
                  );
                }
                //about_us
                if (itemType == "about_us") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUsView(),
                    ),
                  );
                }
              },
              leading: Icon(profileItems[index].iconData ?? Icons.error),
              title: Text(
                profileItems[index].name ?? "",
                style: GoogleFonts.sen(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Column(
            children: [
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
              const SizedBox(height: 16)
            ],
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
