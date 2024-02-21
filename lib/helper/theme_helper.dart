import 'dart:ui';

class ThemeHelper {
  static bool isDarkMode() {
    var brightness = PlatformDispatcher.instance.platformBrightness;
    return brightness == Brightness.dark;
  }
}