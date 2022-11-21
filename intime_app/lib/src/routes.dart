import 'package:flutter/material.dart';
import 'package:intime_app/src/screens/initial_screen.dart';
import 'package:intime_app/src/screens/login.dart';
import 'package:intime_app/src/screens/error_page.dart';
import 'package:intime_app/src/screens/home.dart';

class Routes {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const LadingPage());
      case '/login':
        return MaterialPageRoute(builder: (context) => const Login());
      case '/initial-screen':
        return MaterialPageRoute(builder: (context) => const InitialScreen());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }
}
