import 'package:flutter/material.dart';
import 'package:report_app_flutter/components/text_field_container.dart';
import 'package:report_app_flutter/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return const TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Your Password",
            icon: Icon(
              Icons.lock,
              color: cPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: cPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
