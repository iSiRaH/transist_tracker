import 'package:flutter/material.dart';
import 'package:transist_tracker/utils/colors.dart';
void main() {
  runApp(const FindBusPage());
}

class FindBusPage extends StatelessWidget {
  const FindBusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus find',
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
              
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Boarding From",
                      hintStyle: TextStyle(
                        color: mainAsh,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                      filled: true, 
                      fillColor: Colors.white, 
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),

                
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
                
                TextField(
                    decoration: InputDecoration(
                      hintText: "Where are you going",
                      hintStyle: TextStyle(
                        color: mainAsh,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                      filled: true, 
                      fillColor: Colors.white, 
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  



                
                
               
              ],
            ),
           ),
                        
          
          
          ],
         ),
      ),
    );
  }

}
