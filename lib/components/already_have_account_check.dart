import 'package:flutter/material.dart';
import 'package:report_app_flutter/constants.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  final bool login;
  final Function() press;
  const AlreadyHaveAccountCheck({
    super.key,
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an account? " : "Already have an account? ",
          style: const TextStyle(color: cPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
                color: cPrimaryColor,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
