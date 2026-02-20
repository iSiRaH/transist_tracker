import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String description;
  final Color color;
  final double? width;
  final double? height;
  const CustomButton({
    super.key,
    required this.description,
    required this.color,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? MediaQuery.of(context).size.height * 0.06,
      width: width ?? MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(200),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
          ),
        ),
      ),
    );
  }
}
