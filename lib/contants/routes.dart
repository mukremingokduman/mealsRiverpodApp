import 'package:flutter/material.dart';

import '../screens/tabs.dart';

abstract class Routes {
  static const String splashScreen = "/splashScreen";
  static const String loadingScreen = "/loadingScreen";
  static const String tabsScreen = "/tabsScreen";
  static const String categoriesScreen = "/categoriesScreen";

  static Map<String, Widget Function(BuildContext)> routes = {
    //Routes.categoriesScreen: (context) => const CategoriesScreen(),
    Routes.tabsScreen: (context) => const TabsScreen(),
  };
}
