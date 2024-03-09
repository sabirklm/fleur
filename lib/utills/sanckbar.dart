import 'package:flutter/material.dart';

class SnackbarUtills {
  static void showSnackbar(
      {required BuildContext context, required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: const EdgeInsets.all(16),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.black,
        content: Text(message),
      ),
    );
  }
}
