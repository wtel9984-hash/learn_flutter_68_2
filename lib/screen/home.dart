import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(foregroundColor: const Color.fromARGB(255, 112, 31, 31),
            ),
            onPressed: (){
              print("กดปุ่มแล้ว TextBuuton");
            },
            child: Text(
              "กดปุ่มนี้",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
           ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 171, 80, 1),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            onPressed: (){
              print("กดปุ่มแล้ว FilledBuuton");
            },
            child: Text(
              "กดปุ่มนี้",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 1, 171, 32),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            onPressed: (){
              print("กดปุ่มแล้ว FilledBuuton");
            },
            child: Text(
              "กดปุ่มนี้",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 160, 3, 124),
              foregroundColor: const Color.fromARGB(255, 255, 140, 140),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            onPressed: (){
              print("กดปุ่มแล้ว FilledBuuton");
            },
            child: Text(
              "กดปุ่มนี้",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
          ),
        ],
      ),
    );
  }
}