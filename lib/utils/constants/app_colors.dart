import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // App Basics Colors
  static const Color primaryColor = Color(0xFF4b68ff);
  static const Color secondaryColor = Color(0xFFFFe24b);
  static const Color accentColor = Color(0xFFb0c7ff);

  // Text Colors
  static const Color textPrimary = Color(0xFFb0c7ff);
  static const Color textSecondary = Color(0xFFb0c7ff);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFf6f6f6);
  static const Color dark = Color(0xFF262626);
  static const Color primaryBackground = Color(0xFFf3f5ff);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFf6f6f6);
  static Color darkContainer = AppColors.white.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6c757d);
  static const Color buttonDisabled = Color(0xFFc4c4c4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFd9d9d9);
  static const Color borderSecondary = Color(0xFFe6e6e6);

  // Error and Validation Colors
  static const Color error = Color(0xFFd32f2f);
  static const Color success = Color(0xFF388e2c);
  static const Color warning = Color(0xFFf57c00);
  static const Color info = Color(0xFF1976d2);

  // Neutral Shades
  static const Color white = Color(0xFFffffff);
  static const Color black = Color(0xFF232323);
  static const Color grey = Color(0xFFe0e0e0);
  static const Color lightGrey = Color(0xFFf9f9f9);
  static const Color softGrey = Color(0xFFf4f4f4);
  static const Color darkGrey = Color(0xFF939393);
  static const Color darkerGrey = Color(0xFF4f4f4f);
}
