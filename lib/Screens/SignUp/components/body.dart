import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:report_app_flutter/Screens/Login/login_screen.dart';
import 'package:report_app_flutter/Screens/SignUp/components/background.dart';
import 'package:report_app_flutter/Screens/SignUp/components/social_icon.dart';
import 'package:report_app_flutter/components/already_have_account_check.dart';
import 'package:report_app_flutter/Screens/SignUp/components/or_divider.dart';
import 'package:report_app_flutter/components/rounded_button.dart';
import 'package:report_app_flutter/components/rounded_input_field.dart';
import 'package:report_app_flutter/components/rounded_password_field.dart';
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
            height: size.height * 0.35,
          ),
          RoundedInputField(
            placeholder: "Your Name",
            icon: Icons.account_box,
            onChanged: (value) {},
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
            text: "Sign Up",
            press: () {},
          ),
          SizedBox(height: size.height * 0.02),
          AlreadyHaveAccountCheck(
            login: false,
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
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconSrc:
                    "<svg aria-hidden='true' xmlns='http://www.w3.org/2000/svg' fill='#ef4444' viewBox='0 0 8 19'><path fill-rule='evenodd' d='M6.135 3H8V0H6.135a4.147 4.147 0 0 0-4.142 4.142V6H0v3h2v9.938h3V9h2.021l.592-3H5V3.591A.6.6 0 0 1 5.592 3h.543Z' clip-rule='evenodd'/></svg>",
                imgSize: 20,
                press: () {},
              ),
              SocialIcon(
                iconSrc:
                    "<svg aria-hidden='true' xmlns='http://www.w3.org/2000/svg' fill='#ef4444' viewBox='0 0 18 19'><path fill-rule='evenodd' d='M8.842 18.083a8.8 8.8 0 0 1-8.65-8.948 8.841 8.841 0 0 1 8.8-8.652h.153a8.464 8.464 0 0 1 5.7 2.257l-2.193 2.038A5.27 5.27 0 0 0 9.09 3.4a5.882 5.882 0 0 0-.2 11.76h.124a5.091 5.091 0 0 0 5.248-4.057L14.3 11H9V8h8.34c.066.543.095 1.09.088 1.636-.086 5.053-3.463 8.449-8.4 8.449l-.186-.002Z' clip-rule='evenodd'/></svg>",
                imgSize: 16,
                press: () {},
              ),
              SocialIcon(
                iconSrc:
                    "<svg aria-hidden='true' xmlns='http://www.w3.org/2000/svg' fill='#ef4444' viewBox='0 0 20 17'><path fill-rule='evenodd' d='M20 1.892a8.178 8.178 0 0 1-2.355.635 4.074 4.074 0 0 0 1.8-2.235 8.344 8.344 0 0 1-2.605.98A4.13 4.13 0 0 0 13.85 0a4.068 4.068 0 0 0-4.1 4.038 4 4 0 0 0 .105.919A11.705 11.705 0 0 1 1.4.734a4.006 4.006 0 0 0 1.268 5.392 4.165 4.165 0 0 1-1.859-.5v.05A4.057 4.057 0 0 0 4.1 9.635a4.19 4.19 0 0 1-1.856.07 4.108 4.108 0 0 0 3.831 2.807A8.36 8.36 0 0 1 0 14.184 11.732 11.732 0 0 0 6.291 16 11.502 11.502 0 0 0 17.964 4.5c0-.177 0-.35-.012-.523A8.143 8.143 0 0 0 20 1.892Z' clip-rule='evenodd'/></svg>",
                imgSize: 16,
                press: () {},
              )
            ],
          ),
        ],
      ),
    ));
  }
}
