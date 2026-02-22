import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:transist_tracker/providers/auth_provider.dart';


class BusCard extends ConsumerWidget {

  final String name;
  final String type;
  final String time;
  final String price;
  final String duration;
  final int seatsLeft;
  final Color seatColor;

  const BusCard({
    super.key,
    required this.name,
    required this.type,
    required this.time,
    required this.price,
    required this.duration,
    required this.seatsLeft,
    required this.seatColor,

  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ]
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text(price, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.orangeAccent),),
            ],
          ),
          const SizedBox(height: 6),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(type, style:TextStyle(fontSize: 16, color:Colors.grey[550])),
              Text(duration, style:TextStyle(fontSize: 16, color:Colors.black, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 6),
          Text(time, style:TextStyle(fontSize: 16, color:Colors.black, fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$seatsLeft seatsLeft", style:TextStyle(fontSize: 16, color: seatColor )),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.center_focus_strong), 
                  Icon(Icons.history),            
                  Icon(Icons.code),               
                  GestureDetector(
                    onTap: () {
                      ref.read(authProvider.notifier).logout();
                    },
                    child: Icon(Icons.logout),
                  ),
                ],
              )
            ],
          )
         
          
        ],
      ),
    );
  }
}
