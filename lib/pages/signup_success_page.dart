import 'package:flutter/material.dart';
import 'package:transist_tracker/pages/login_page.dart';
import 'package:transist_tracker/utils/colors.dart';

class SignupSuccessPage extends StatelessWidget {
  const SignupSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/successIcon.png",
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Congratulations!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: mainBlack,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "We've sent you a verification email, please check your inbox and follow the instructions to verify your account.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: subYellow,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Thank you for signing up with us!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: subYellow,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              child: Text(
                "Sign in here",
                style: TextStyle(
                  fontSize: 15,
                  color: mainYellow,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
