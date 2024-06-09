import 'package:flutter/material.dart';
import 'package:small_economy/ui/add_economy_configuration/add_economy_configuration.dart';
import 'package:small_economy/ui/home/home.dart';

class Routes {
  static const String initial = '/';
  static const String addEconomyConfiguration = '/addEconomyConfiguration';

  static Map<String, Widget Function(BuildContext)> getAppRoutes(
      BuildContext context) {
    return {
      Routes.initial: (context) => const Home(),
      Routes.addEconomyConfiguration: (context) => AddEconomyConfiguration(),
    };
  }
}
