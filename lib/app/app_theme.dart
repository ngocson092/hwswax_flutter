import 'package:flutter/material.dart';

class AppColors {
  static const canvas = Color(0xFFFAFAFA);
  static const ink = Color(0xFF000000);
  static const muted = Color(0xFF777777);
  static const border = Color(0xFFC6C6C6);
  static const placeholder = Color(0xFFD4D4D4);
  static const chip = Color(0xFFE2E2E2);
  static const note = Color(0xFFF3F3F4);
}

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.black,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: AppColors.canvas,
      useMaterial3: true,
      fontFamily: 'Space Grotesk',
    );
  }
}
