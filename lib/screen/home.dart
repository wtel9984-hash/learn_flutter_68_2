import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/cat1.jpg", width: 200, height: 200),
        SizedBox(height: 20),
        Image.network(
          "https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_960_720.jpg",
          width: 200,
          height: 200,
        )
      ],
    );
  }
}