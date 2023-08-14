import 'package:flutter/material.dart';
import 'package:report_app_flutter/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //total height and width  of screen
    return Container(
      alignment: AlignmentDirectional.topCenter,
      height: size.height,
      width: double.infinity,
      color: cBgColor,
      child: child,
    );
  }
}
