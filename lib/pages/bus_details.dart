import 'package:flutter/material.dart';
import 'bus_card.dart'; 
// void main() {
//   runApp(const BusBookingApp());
// }

class BusBookingApp extends StatelessWidget {
  const BusBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Booking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: const BusBookingHomePage(),
    );
  }
}

class BusBookingHomePage extends StatelessWidget {
  const BusBookingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
           
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'), 
                  radius: 24,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Hello Rose!",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("Select your bus!",
                        style: TextStyle(color: Color(0xffFFD800), fontSize: 14)),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.filter_list, size: 26),
                const SizedBox(width: 12),
                const Icon(Icons.notifications_none, size: 26),
              ],
            ),
           const SizedBox(height: 20),

           Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color:  Color(0xffFFD800),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
              
                Image.asset('assets/images/Bus_Image.png',width: 150, height: 75, ),
                
                const SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Lorem", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(Icons.swap_horiz, color: Colors.white, ),
                    ),
                    const Text("Lorem", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 12,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(12)

                  ),
                  child: const Text("08 th - Dec - 2024 | Sunday", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                ),

                const SizedBox(height: 12,),
             
                  



                
                
               
              ],
            ),
           ),
                        
            BusCard(
              name: "Silva Travels",
              type: "A/C Sleeper (2+2)",
              time: "9:00 AM - 9:45 AM",
              price: "\$200",
              duration: "45 Min",
              seatsLeft: 15,
              seatColor: Colors.green,
            ),

            BusCard(
              name: "Silva Travels",
              type: "A/C Sleeper (2+2)",
              time: "9:00 AM - 9:45 AM",
              price: "\$200",
              duration: "45 Min",
              seatsLeft: 15,
              seatColor: Colors.green,
            ),


            BusCard(
              name: "Silva Travels",
              type: "A/C Sleeper (2+2)",
              time: "9:00 AM - 9:45 AM",
              price: "\$200",
              duration: "45 Min",
              seatsLeft: 15,
              seatColor: Colors.green,
            ),

             BusCard(
              name: "Silva Travels",
              type: "A/C Sleeper (2+2)",
              time: "9:00 AM - 9:45 AM",
              price: "\$200",
              duration: "45 Min",
              seatsLeft: 15,
              seatColor: Colors.green,
            ),

          
          ],
         ),
      ),
    );
  }

}
