import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:report_app_flutter/Data/user.dart';
import 'package:report_app_flutter/Screens/Home/components/background.dart';
import 'package:report_app_flutter/components/list_items.dart';
import 'package:report_app_flutter/components/rounded_button.dart';
import 'package:report_app_flutter/components/rounded_search_field.dart';
import 'package:report_app_flutter/constants.dart';
import 'package:report_app_flutter/Data/user.dart';

class Body extends StatelessWidget {
  // final Widget child;
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //total height and width  of screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: size.height * 0.09),
            const Text(
              "Explore Available Reports",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            RoundedSearchField(
              placeholder: "Search Items",
              icon: Icons.search,
              onChanged: (value) {},
            ),
            LitsItems(data: users),
          ],
        ),
      ),
    );
  }
}
