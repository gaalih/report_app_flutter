import 'package:flutter/material.dart';
import 'package:report_app_flutter/Screens/Welcome/welcome_screen.dart';
import 'package:report_app_flutter/constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Report',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: cPrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: const WelcomeScreen(),
    );
  }
}
