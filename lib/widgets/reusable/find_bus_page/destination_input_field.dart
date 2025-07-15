import 'package:flutter/material.dart';
import 'package:transist_tracker/utils/colors.dart';

class DestinationInputField extends StatelessWidget {
  final String hintname;
  
  const DestinationInputField({super.key, required this.hintname});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding:const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom:18 ),
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: hintname,
          hintStyle: TextStyle(
            color: mainAsh,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          filled:true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2.0,
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color:Colors.white,
              width: 2.0
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2.0,
            )
          )
        ),
       
        
      ),
      
    );
  }
}