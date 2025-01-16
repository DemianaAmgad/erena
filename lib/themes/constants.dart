import 'package:flutter/material.dart';

// App colors
class AppColors {
  static const Color primary = Color(0xFF6C63FF); // Purple
  static const Color accent = Color(0xFFFFC107); // Amber
  static const Color background = Color(0xFFF5F5F5); // Light Gray
  static const Color text = Colors.black87;
  static const Color buttonTextColor = Colors.white;
}

// Text Styles
class AppTextStyles {
  static const TextStyle headline1 = TextStyle(
    fontFamily: 'PlayfairDisplay',
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );
  static const TextStyle bodyText = TextStyle(
    fontSize: 18,
    color: AppColors.text,
  );
  static const TextStyle smallBodyText = TextStyle(
    fontSize: 14,
    color: AppColors.text,
  );
}

// Padding and Spacing
class AppSpacing {
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
}
