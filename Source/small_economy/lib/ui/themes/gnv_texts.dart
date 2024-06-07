import 'package:flutter/material.dart';
import 'package:small_economy/ui/themes/gnv_colors.dart';

class AppTexts {
  static const TextStyle displayLarge = TextStyle(fontWeight: FontWeight.w400, fontSize: 57);
  static const TextStyle displayMedium = TextStyle(fontWeight: FontWeight.w400, fontSize: 45);
  static const TextStyle displaySmall = TextStyle(fontWeight: FontWeight.w400, fontSize: 36);
  static const TextStyle headlineLarge =
      TextStyle(fontWeight: FontWeight.w700, fontSize: 26, color: AppColors.gnvPrimary);
  static const TextStyle headlineMedium =
      TextStyle(fontWeight: FontWeight.w700, fontSize: 24, color: AppColors.gnvPrimary);
  static const TextStyle headlineSmall =
      TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: AppColors.gnvPrimary);
  static const TextStyle titleLarge = TextStyle(fontWeight: FontWeight.w700, fontSize: 22);
  static const TextStyle titleMedium = TextStyle(fontWeight: FontWeight.w700, fontSize: 16);
  static const TextStyle titleSmall = TextStyle(fontWeight: FontWeight.w700, fontSize: 14);
  static const TextStyle labelLarge = TextStyle(fontWeight: FontWeight.w700, fontSize: 14);
  static const TextStyle labelMedium = TextStyle(fontWeight: FontWeight.w500, fontSize: 12);
  static const TextStyle labelSmall = TextStyle(fontWeight: FontWeight.w500, fontSize: 11);
  static const TextStyle bodyLarge = TextStyle(fontWeight: FontWeight.w400, fontSize: 16);
  static const TextStyle bodyMedium = TextStyle(fontWeight: FontWeight.w400, fontSize: 14);
  static const TextStyle bodySmall = TextStyle(fontWeight: FontWeight.w700, fontSize: 12);

  static const TextTheme gnvTextTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
  );
}
