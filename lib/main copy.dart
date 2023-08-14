import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Report App',
      // theme: ThemeData(primarySwatch: Colors.lightBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example'),
          backgroundColor: Colors.blueGrey,
        ),
        body: SafeArea(
          child: Container(
            color: Colors.lightBlue,
            width: 1000,
            padding: const EdgeInsets.only(
                top: 0, bottom: 0, left: 10.0, right: 10.0),
            child: const Column(
              children: [
                Image(image: AssetImage('assets/images/report-1.png'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
