import 'package:flutter/material.dart';
import 'package:report_app_flutter/Screens/Home/components/background.dart';
import 'package:report_app_flutter/Screens/Home/components/list_users.dart';

class Body extends StatelessWidget {
  // final Widget child;
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size; //total height and width  of screen
    return const Background(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20), child: ListUsers()),
    );
  }
}
