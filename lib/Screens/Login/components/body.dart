import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:journeyapp/Screens/Login/components/background.dart';
import 'package:journeyapp/Screens/Signup/signup_screen.dart';
import 'package:journeyapp/components/already_have_an_account_acheck.dart';
import 'package:journeyapp/components/rounded_button.dart';
import 'package:journeyapp/components/rounded_input_field.dart';
import 'package:journeyapp/components/rounded_password_field.dart';

import '../../../constants.dart';
class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.10),
            Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: kPrimaryGreen,
              ),
            ),
            SizedBox(height: size.height * 0.20),
            // SvgPicture.asset(
            //   "assets/icons/login.svg",
            //   height: size.height * 0.35,
            // ),
            // SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
