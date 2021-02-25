import 'package:flutter/material.dart';
import 'package:journeyapp/components/text_field_container.dart';

import '../constants.dart';
// import 'package:flutter_auth/components/text_field_container.dart';
// import 'package:flutter_auth/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryGreen,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryGreen,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryGreen,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
