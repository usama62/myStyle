import 'package:flutter/material.dart';

class CustomSnackbar {
  static SnackBar showSnackbar(String message) => SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 5),
      );
}