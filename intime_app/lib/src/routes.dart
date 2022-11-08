import 'package:flutter/material.dart';
import 'package:intime_app/src/screens/home.dart';

class Routes {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const LadingPage());
      default:
    }
    return null;
  }
}
