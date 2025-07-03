

import 'package:flutter/material.dart';

// class BusCard extends StatelessWidget {
//   final String name;
//   final String type;
//   final String time;
//   final String price;
//   final String duration;
//   final int seatsLeft;
//   final Color seatColor;

//   const BusCard({
//     super.key,
//     required this.name,
//     required this.type,
//     required this.time,
//     required this.price,
//     required this.duration,
//     required this.seatsLeft,
//     required this.seatColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 14),
//       padding: const EdgeInsets.all(14),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(18),
//         boxShadow: const [
//           BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//           Text(type, style: TextStyle(color: Colors.grey[700])),
//           const SizedBox(height: 6),
//           Row(
//             children: [
//               Text(time, style: TextStyle(color: Colors.grey[800])),
//               const Spacer(),
//               Text(price,
//                   style: const TextStyle(
//                       fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange)),
//               const SizedBox(width: 8),
//               Text(duration, style: TextStyle(color: Colors.grey[600])),
//             ],
//           ),
//           const SizedBox(height: 6),
//           Text(
//             "$seatsLeft Seats left",
//             style: TextStyle(color: seatColor, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }


class BusCard extends StatelessWidget {

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
  Widget build(BuildContext context) {
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
          Text("$seatsLeft seatsLeft", style:TextStyle(fontSize: 16, color: seatColor )),
          
        ],
      ),
    );
  }
}
