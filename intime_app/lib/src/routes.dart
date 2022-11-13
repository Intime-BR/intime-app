import 'package:flutter/material.dart';
import 'package:intime_app/src/screens/cadastro.dart';
import 'package:intime_app/src/screens/home.dart';

class Routes {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const LadingPage());
      case '/cadastro':
        return MaterialPageRoute(builder: (context) => const Cadastro());
      default:
    }
    return null;
  }
}
