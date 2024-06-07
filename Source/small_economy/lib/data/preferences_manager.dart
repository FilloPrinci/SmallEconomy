import 'package:shared_preferences/shared_preferences.dart';

class PreferencesManager {
  static Future<bool> removeStringConfigurationInPref(String key) async {
    assert(key != '');
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.remove(key);
  }

  static Future<bool> setStringConfigurationInPrefs(String key, String value) async {
    assert(key != '');
    assert(value != '');

    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (value == '') {
      print('Trying to save an empty string in prefs, remove the pref instead of saving it empty');
    }
    print('[PreferencesManager] Saved pref $key with value $value');
    return prefs.setString(key, value);
  }

  static Future<String?> getStringConfigurationInPrefs(String key) async {
    assert(key != '');

    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
}
