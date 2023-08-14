import 'package:flutter/material.dart';
import 'package:report_app_flutter/components/text_field_container.dart';
import 'package:report_app_flutter/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String placeholder;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    super.key,
    this.placeholder = "Your Input",
    this.icon = Icons.person,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: cPrimaryColor,
            ),
            hintText: placeholder,
            border: InputBorder.none),
      ),
    );
  }
}
