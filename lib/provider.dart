import 'package:flutter/material.dart';

class HidePassword with ChangeNotifier {
  bool _isActive = false;
  bool get hidePassword => _isActive;

  void toggle() {
    _isActive = !_isActive;
    notifyListeners();
  }
}


class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme(bool value) {
    _isDarkMode = value;
    notifyListeners();
  }
}
