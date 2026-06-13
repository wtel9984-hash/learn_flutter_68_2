import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
        // return Row(
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.tealAccent,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text( 
            "Hello Flutter",
            style: TextStyle( 
              fontSize: 20,
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
          Container(
          color: const Color.fromARGB(255, 0, 248, 99),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text( 
            "Hello Flutter",
            style: TextStyle( 
              fontSize: 20,
              color: const Color.fromARGB(255, 66, 92, 165),
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 125, 255, 3),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text( 
            "Hello Flutter",
            style: TextStyle( 
              fontSize: 20,
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
      ],
    );
  }
}