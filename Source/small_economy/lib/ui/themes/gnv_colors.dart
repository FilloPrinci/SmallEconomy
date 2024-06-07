import 'package:flutter/material.dart';

class AppColors {
  static const Color gnvPrimary = Color.fromARGB(255, 243, 125, 39);

  static const Color gnvOnPrimary = Color.fromARGB(255, 255, 255, 255);

  static const Color gnvSecondary = Color.fromARGB(255, 205, 113, 0);

  static const Color gnvOnSecondary = Color.fromARGB(255, 255, 255, 255);

  static const Color gnvTertiary = Color.fromARGB(255, 47, 91, 167);

  static const Color gnvOnTertiary = Color.fromARGB(255, 255, 255, 255);

  static const Color gnvPrimaryContainer = Color.fromARGB(255, 255, 212, 202);

  static const Color gnvOnPrimaryContainer = Color.fromARGB(255, 8, 4, 4);

  static const Color gnvSecondaryContainer = Color.fromARGB(255, 255, 231, 202);

  static const Color gnvOnSecondaryContainer = Color.fromARGB(255, 61, 33, 0);

  static const Color gnvTertiaryContainer = Color.fromARGB(255, 213, 217, 228);

  static const Color gnvOnTertiaryContainer = Color.fromARGB(255, 47, 91, 167);

  ///TODO edit
  static const Color gnvSurfaceDim = Color.fromARGB(255, 222, 216, 225);

  ///TODO edit
  static const Color gnvSurface = Color.fromARGB(255, 230, 230, 230);

  ///TODO edit
  static const Color gnvSurfaceBight = Color.fromARGB(255, 250, 250, 250);

  ///TODO edit
  static const Color gnvOnSurface = Color.fromARGB(255, 73, 69, 79);

  ///TODO edit
  static const Color gnvOnSurfaceVar = Color.fromARGB(255, 201, 197, 202);

  ///TODO edit
  static const Color gnvBackground = Color.fromARGB(255, 255, 253, 248);

  ///TODO edit
  static const Color gnvOnBackground = Color.fromARGB(255, 29, 27, 32);

  ///TODO edit
  static const Color gnvOutline = Color.fromARGB(255, 92, 92, 92);

  ///TODO edit
  static const Color gnvError = Color.fromARGB(255, 179, 38, 30);

  ///TODO edit
  static const Color gnvOnError = Color.fromARGB(255, 255, 255, 255);

  static const ColorScheme gnvColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: gnvPrimary,
      onPrimary: gnvOnPrimary,
      primaryContainer: gnvPrimaryContainer,
      onPrimaryContainer: gnvOnPrimaryContainer,
      secondary: gnvSecondary,
      onSecondary: gnvOnSecondary,
      surfaceTint: gnvSurfaceDim,
      surface: gnvSurface,
      surfaceVariant: gnvSurfaceBight,
      onSurface: gnvOnSurface,
      onSurfaceVariant: gnvOnSurfaceVar,
      background: gnvBackground,
      onBackground: gnvOnBackground,
      outline: gnvOutline,
      error: gnvError,
      onError: gnvOnError);
}
