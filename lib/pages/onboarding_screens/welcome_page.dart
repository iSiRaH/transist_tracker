import 'package:flutter/material.dart';
import 'package:transist_tracker/utils/colors.dart';

class WelcomePage extends StatelessWidget {
  final String title;
  final String description;
  final String imgUrl;
  const WelcomePage({
    super.key,
    required this.title,
    required this.description,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Image.asset(
              imgUrl,
              fit: BoxFit.contain,
              width: 200,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: subYellow,
            ),
          ),
        ],
      ),
    );
  }
}
