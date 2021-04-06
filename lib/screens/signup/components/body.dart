import 'package:flutter/material.dart';
import 'package:journeyapp/screens/login/login_screen.dart';
import 'package:journeyapp/components/already_have_an_account_acheck.dart';
import 'package:journeyapp/components/rounded_button.dart';
import 'package:journeyapp/components/rounded_input_field.dart';
import 'package:journeyapp/components/rounded_password_field.dart';
import 'package:journeyapp/screens/signup/components/background.dart';
import 'package:journeyapp/screens/signup/components/social_icon.dart';
import '../../../constants.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
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
              "Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: kPrimaryGreen,
              ),
            ),
            SizedBox(height: size.height * 0.20),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
