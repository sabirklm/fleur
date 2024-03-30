import 'package:flutter/material.dart';

class MenuItem {
  String? name;
  IconData? iconData;
  String? type;

  MenuItem({
    this.name,
    this.iconData,
    this.type,
  });
}

List<MenuItem> profileItems = [
  MenuItem(
    name: "Account Information",
    iconData: Icons.account_circle,
    type: "account_info",
  ),
  MenuItem(
    name: "My Car",
    iconData: Icons.directions_car,
    type: "my_car",
  ),
  MenuItem(
    name: "Help & Support",
    iconData: Icons.help,
    type: "help_support",
  ),
  MenuItem(
    name: "Notifications",
    iconData: Icons.notifications,
    type: "notifications",
  ),
  MenuItem(
    name: "Subscription",
    iconData: Icons.subscriptions,
    type: "subscription",
  ),
  MenuItem(
    name: "Settings",
    iconData: Icons.settings,
    type: "settings",
  ),
  MenuItem(
    name: "Feedback",
    iconData: Icons.feedback,
    type: "feedback",
  ),
  MenuItem(
    name: "Privacy Policy",
    iconData: Icons.privacy_tip,
    type: "privacy_policy",
  ),
  MenuItem(
    name: "Terms of Service",
    iconData: Icons.description,
    type: "terms_of_service",
  ),
  MenuItem(
    name: "About Us",
    iconData: Icons.info,
    type: "about_us",
  ),
  MenuItem(
    name: "Licenses",
    iconData: Icons.pages,
    type: "licenses",
  ),
];
