import 'package:flutter/material.dart';
import 'package:journeyapp/screens/Login/login_screen.dart';
import 'package:journeyapp/screens/Signup/signup_screen.dart';
import 'package:journeyapp/screens/Welcome/components/background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:journeyapp/components/rounded_button.dart';
import 'package:journeyapp/constants.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/best_journey.png",
            ),
            SizedBox(height: size.height * 0.15),
            RoundedButton(
              text: "LOGIN",
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
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryGrey,
              textColor: Colors.white,
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
