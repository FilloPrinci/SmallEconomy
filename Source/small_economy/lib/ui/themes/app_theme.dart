import 'package:flutter/material.dart';
import 'package:small_economy/ui/themes/gnv_colors.dart';
import 'package:small_economy/ui/themes/gnv_texts.dart';

class AppTheme {
  static final ThemeData gnvThemeData = ThemeData.from(
    useMaterial3: true,
    colorScheme: AppColors.gnvColorScheme,
    textTheme: AppTexts.gnvTextTheme,
  );
}
