import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.tap});
  final String? text;
  final Color? color;
  Function()? tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 60,
        color: color,
        alignment: Alignment.centerLeft,
        child: Text(
          "$text",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
