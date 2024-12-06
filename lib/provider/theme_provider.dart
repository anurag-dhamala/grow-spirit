

import 'package:flutter/foundation.dart';

class ThemeProvider with ChangeNotifier {

  String _theme = "light";

  void setTheme(String theme) {
    _theme = theme;
    notifyListeners();
  }

  String get theme {
    return _theme;
  }

}