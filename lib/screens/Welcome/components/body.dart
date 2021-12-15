import 'package:call_centre/components/rounded_button.dart';
import 'package:call_centre/components/small_button.dart';
import 'package:call_centre/constant.dart';
import 'package:call_centre/screens/Login/login_screen.dart';
import 'package:call_centre/screens/Signup/signup_screen.dart';
import 'package:call_centre/screens/Welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "WELCOME TO CALL CENTER",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Continue with Phone Number",
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
            Padding(
              padding: const EdgeInsets.only(left: 38, right: 38),
              child: Row(
                children: const [
                  Expanded(
                    child: SmallButton(
                      text: "Google",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SmallButton(
                      text: "Facebook",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
