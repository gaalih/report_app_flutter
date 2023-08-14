import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:report_app_flutter/Screens/Login/login_screen.dart';
import 'package:report_app_flutter/Screens/Welcome/components/background.dart';
import 'package:report_app_flutter/components/rounded_button.dart';
import 'package:report_app_flutter/constants.dart';

class Body extends StatelessWidget {
  // final Widget child;
  const Body({super.key});

// const ButtonStyle flatButtonStyle = TextButton.styleFrom(
//   primary: Colors.black87,
//   minimumSize: Size(88, 36),
//   padding: EdgeInsets.symmetric(horizontal: 16),
//   shape: const RoundedRectangleBorder(
//     borderRadius: BorderRadius.all(Radius.circular(2)),
//   ),
// );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //total height and width  of screen
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "WELCOME TO",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          const Text(
            "REPORT APP FLUTTER",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          SizedBox(height: size.height * 0.04),
          SvgPicture.asset(
            'assets/images/welcome_page.svg',
            height: size.height * 0.55,
          ),
          RoundedButton(
            text: "Login",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
          RoundedButton(
            text: "Register",
            color: cPrimaryLightColor,
            textColor: cPrimaryColor,
            press: () {},
          )
        ],
      ),
    ));
  }
}
