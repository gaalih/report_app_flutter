import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:report_app_flutter/constants.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final double imgSize;
  final Function() press;
  const SocialIcon({
    super.key,
    required this.iconSrc,
    this.imgSize = 20,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: cPrimaryLightColor),
            shape: BoxShape.circle),
        child: SvgPicture.string(
          iconSrc,
          height: imgSize,
          width: imgSize,
        ),
      ),
    );
  }
}
