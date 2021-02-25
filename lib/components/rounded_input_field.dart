import 'package:flutter/material.dart';
import 'package:journeyapp/components/text_field_container.dart';
import 'package:journeyapp/constants.dart';
// import 'package:flutter_auth/components/text_field_container.dart';
// import 'package:flutter_auth/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryLightGrey,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryGreen,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
