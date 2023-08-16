import 'package:flutter/material.dart';
import 'package:report_app_flutter/components/text_field_container.dart';
import 'package:report_app_flutter/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    super.key,
    required this.onChanged,
  });

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: !visible,
        decoration: InputDecoration(
            hintText: "Your Password",
            prefixIcon: const Icon(
              Icons.lock,
              color: cPrimaryColor,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  visible = !visible;
                });
              },
              icon: Icon(
                visible ? Icons.visibility_off : Icons.visibility,
                color: cPrimaryColor,
              ),
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 20)),
      ),
    );
  }
}
