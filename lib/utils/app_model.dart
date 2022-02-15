import 'package:ddadot/utils/app_preference.dart';
import 'package:flutter/material.dart';


class AppModel extends ChangeNotifier {

  static final AppModel _instance = AppModel._internal();

  factory AppModel() => _instance;

  AppModel._internal()
  {

  }

  AppPreference appPreference = AppPreference();
  bool _darkMode = false;
  bool get darkMode => _darkMode;

  set darkMode(bool value) {
    _darkMode = value;
    appPreference.setDarkMode(value);
    notifyListeners();
  }
}
