import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:transist_tracker/pages/login_page.dart';
import 'package:transist_tracker/pages/signup_success_page.dart';
import 'package:transist_tracker/utils/colors.dart';
import 'package:transist_tracker/widgets/reusable/input_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Create an  account",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: mainBlack,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Welcome back to the app",
                  style: TextStyle(
                    fontSize: 16,
                    color: subYellow,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InputField(
                  labelName: "Name",
                  hintText: "John Doe",
                ),
                SizedBox(
                  height: 15,
                ),
                InputField(
                  labelName: "Email Address",
                  hintText: "hello@example.com",
                ),
                SizedBox(
                  height: 15,
                ),
                InputField(
                  labelName: "Password",
                  hintText: "...............",
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Text(
                        "By continuing, you agree to our terms of service. ",
                        softWrap: true,
                        style: TextStyle(
                          color: inputTextColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupSuccessPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainYellow,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                    ),
                    child: Center(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: mainBlack,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: dividerColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "or sign up with",
                      style: TextStyle(
                        color: inputTextColor,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: dividerColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: mainAsh,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 7.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/google_icon.png",
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                            color: mainBlack,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                          color: mainYellow.withOpacity(0.8),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: "Sign in here",
                        style: TextStyle(
                          color: mainYellow,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
                // Text(
                //   "Already have an account? Sign in here",
                //   style: TextStyle(
                //     color: mainYellow,
                //     fontWeight: FontWeight.w500,
                //     fontSize: 16,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
