import 'package:flutter/material.dart';
import 'package:transist_tracker/pages/signup_success_page.dart';
import 'package:transist_tracker/pages/welcome_page.dart';
import 'package:transist_tracker/pages/payment_success_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Transist Tracker",
      debugShowCheckedModeBanner: false,
      home: PaymentSuccessPage(),
    );
  }
}