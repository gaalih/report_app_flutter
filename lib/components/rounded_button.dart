import 'package:flutter/material.dart';
import 'package:report_app_flutter/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor;
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    this.color = cPrimaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //total height and width  of screen
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 40),
        width: size.width * 0.8,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: color,
                minimumSize: const Size(88, 36),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
              ),
              onPressed: press,
              child: Text(
                text,
                style: TextStyle(color: textColor),
              ),
            )));
  }
}
