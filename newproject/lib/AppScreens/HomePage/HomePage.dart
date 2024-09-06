import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:newproject/AppScreens/HomePage/category.dart';
import 'package:newproject/AppScreens/NumbersScreen/Number.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 232, 210),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 109, 83, 74),
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: "Number ",
            color: Colors.orange,
            tap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Number(),
                  ));
            },
          ),
          Category(
            text: "Family Members  ",
            color: const Color.fromARGB(255, 35, 109, 37),
            tap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Category(),
                  ));
            },
          ),
          Category(
            text: "Colors  ",
            color: const Color.fromARGB(255, 138, 100, 150),
            tap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Category(),
                  ));
            },
          ),
          Category(
            text: "Phases ",
            color: const Color.fromARGB(255, 130, 169, 209),
            tap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Category(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
