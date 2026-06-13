import 'package:flutter/material.dart';

import 'package:learn_flutter_68_2/model/person.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List data = ["สมชาย", "สมศรี", "สมปอง", "สมหมาย", "สมจิตร"];

  @override
  Widget build (BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 179, 14, 14)),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          padding: EdgeInsets.all(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ชื่อ: ${people[index].name}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "อายุ: ${people[index].age}",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "อาชีพ: ${people[index].job}",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Icon(
                Icons.person,
                size: 50,
                color: const Color.fromARGB(255, 14, 179, 14),
              ),
            ],
          ),
        );
      },
    );
  }
}