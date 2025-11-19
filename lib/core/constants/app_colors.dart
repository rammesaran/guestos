import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Liquid Glass Theme Colors
  static const Color primaryBlue = Color(0xFF1E4A72);
  static const Color primaryDark = Color(0xFF0D2B3E);
  static const Color primaryLight = Color(0xFF2E5A82);

  // Glass Effects
  static const Color glassBackground = Color(0x80FFFFFF);
  static const Color glassBorder = Color(0x40FFFFFF);
  static const Color glassShadow = Color(0x20000000);

  // Gradient Colors
  static const List<Color> primaryGradient = [
    Color(0xFF1E4A72),
    Color(0xFF2D5B84),
    Color(0xFF3C6C96),
  ];

  static const List<Color> glassGradient = [
    Color(0x30FFFFFF),
    Color(0x10FFFFFF),
  ];

  // Status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFA726);
  static const Color error = Color(0xFFEF5350);
  static const Color info = Color(0xFF29B6F6);

  // Chart Colors
  static const Color chartYellow = Color(0xFFFFA726);
  static const Color chartGreen = Color(0xFF4CAF50);
  static const Color chartBlue = Color(0xFF29B6F6);
  static const Color chartOrange = Color(0xFFFF7043);

  // Text Colors
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xB3FFFFFF);
  static const Color textTertiary = Color(0x80FFFFFF);

  // Surface Colors
  static const Color surfacePrimary = Color(0x20FFFFFF);
  static const Color surfaceSecondary = Color(0x15FFFFFF);
  static const Color surfaceTertiary = Color(0x10FFFFFF);
}
