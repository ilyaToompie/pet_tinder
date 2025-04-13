import 'package:flutter/material.dart';

class AppColors {
  static const background1 = Color.fromRGBO(221, 255, 93, 1);
  static const background2 = Color.fromRGBO(176, 108, 239, 1);
  static const primary = Color.fromRGBO(255, 255, 255, 1);
  static const secondary = Color.fromRGBO(9, 9, 9, 1);
  static Color tertiary3(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? const Color.fromRGBO(9, 9, 9, 1)
        : const Color.fromRGBO(255, 255, 255, 1);
  }
}
