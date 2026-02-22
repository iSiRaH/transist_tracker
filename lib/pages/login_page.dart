import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:transist_tracker/providers/auth_provider.dart';
import 'package:transist_tracker/utils/colors.dart';
import 'package:transist_tracker/widgets/reusable/login_page/input_field.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: mainBlack,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Welcome back to the app",
                style: TextStyle(
                  fontSize: 16,
                  color: subYellow,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InputField(
                labelName: "Email Address",
                hintText: "hello@example.com",
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 25,
              ),
              InputField(
                labelName: "Password",
                hintText: "...............",
                controller: _passwordController,
                obscureText: true,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Keep me signed in",
                    style: TextStyle(
                      color: inputTextColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: authState.isSubmitting
                    ? null
                    : () {
                        ref.read(authProvider.notifier).login(
                              email: _emailController.text.trim(),
                              password: _passwordController.text,
                            );
                      },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: mainYellow,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14.0,
                    ),
                    child: Center(
                      child: authState.isSubmitting
                          ? SizedBox(
                              height: 18,
                              width: 18,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: mainBlack,
                              ),
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: mainBlack,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              if (authState.errorMessage != null) ...[
                SizedBox(height: 12),
                Text(
                  authState.errorMessage!,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 13,
                  ),
                ),
              ],
              SizedBox(
                height: 30,
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
                    "or sign in with",
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
                height: 25,
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
              TextButton(
                onPressed: () {
                  ref.read(authProvider.notifier).showSignup();
                },
                child: Text(
                  "Create an account",
                  style: TextStyle(
                    color: mainYellow,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
