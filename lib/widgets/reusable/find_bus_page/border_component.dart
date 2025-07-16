import 'package:flutter/material.dart';

class BorderComponent extends StatelessWidget {
  final String name;
  final IconData icons_name;
  const BorderComponent({super.key, required this.icons_name , required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3.0),
            borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(8.0), 
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
                Icon(icons_name, size: 18),
                SizedBox(width: 6),
                Text(name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),

            ],            
        ),
    );
  }
}