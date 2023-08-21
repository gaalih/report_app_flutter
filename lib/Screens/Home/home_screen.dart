import 'package:flutter/material.dart';
import 'package:report_app_flutter/Data/user.dart';
import 'package:report_app_flutter/components/rounded_search_field.dart';
// import 'package:report_app_flutter/Includes/navigation.dart';
import 'package:report_app_flutter/Screens/Home/components/body.dart';
import 'package:report_app_flutter/constants.dart';

class HomeScreen extends StatelessWidget {
  // final List<Map<String, dynamic>> data;
  const HomeScreen({super.key});

  // List<Map<String, dynamic>> foundUser = [];
  // @override
  // initState(){
  //   foundUser = users;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: Navigation(title: "Home Page", showBackButton: false),
      body: Body(),
    );
  }
}
