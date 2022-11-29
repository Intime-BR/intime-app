import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intime_app/src/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const App());
}
