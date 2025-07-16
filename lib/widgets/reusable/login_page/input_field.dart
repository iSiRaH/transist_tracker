import 'package:flutter/material.dart';
import 'package:transist_tracker/utils/colors.dart';

class InputField extends StatelessWidget {
  final String labelName;
  final String hintText;

  const InputField(
      {super.key, required this.labelName, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: TextStyle(
            fontSize: 12,
            color: inputTextColor,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: mainAsh,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: subYellow,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: subYellow,
                width: 2.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: subYellow.withOpacity(0.3),
                width: 2.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
