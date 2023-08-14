import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:report_app_flutter/Screens/Login/components/background.dart';
import 'package:report_app_flutter/Screens/SignUp/signup_screen.dart';
import 'package:report_app_flutter/components/already_have_account_check.dart';
import 'package:report_app_flutter/components/rounded_button.dart';
import 'package:report_app_flutter/components/rounded_input_field.dart';
import 'package:report_app_flutter/components/rounded_password_field.dart';
// import 'package:report_app_flutter/constants.dart';

// import 'package:report_app_flutter/constants.dart';

class Body extends StatelessWidget {
  // final Widget child;
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //total height and width  of screen
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/login.svg',
            height: size.height * 0.55,
          ),
          RoundedInputField(
            placeholder: "Your Email",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Login",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
    ));
  }
}
