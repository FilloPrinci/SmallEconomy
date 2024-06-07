import 'dart:convert';

import 'package:flutter/services.dart';

class AppSettings {
  static const String emailRegex = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+";

  /// Used in oAuth 2.0 procedure, when requesting a token
  final String oAuthServiceEndpoint;

  final int requestsTimeout;

  AppSettings(this.oAuthServiceEndpoint, this.requestsTimeout);

  /// Load the app settings from file
  static Future<AppSettings> load() async {
    // Load the app settings JSON file
    final contents = await rootBundle.loadString('assets/settings/app_settings.json');
    final jsonSettings = jsonDecode(contents);

    return AppSettings(jsonSettings['oAuthServiceEndpoint'], jsonSettings['requestsTimeout']);
  }
}
