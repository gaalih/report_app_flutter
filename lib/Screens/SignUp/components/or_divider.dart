import 'package:flutter/material.dart';
import 'package:report_app_flutter/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      // alignment: AlignmentDirectional.center,
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "OR",
              style:
                  TextStyle(color: cPrimaryColor, fontWeight: FontWeight.w500),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: cPrimaryColor,
        height: 1.2,
      ),
    );
  }
}
