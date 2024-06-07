import 'package:flutter/material.dart';
import 'package:small_economy/ui/themes/app_theme.dart';

import 'data/app_data.dart';
import 'data/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppData.appTitle,
      theme: AppTheme.gnvThemeData,
      routes: Routes.getAppRoutes(context),
    );
  }
}
