import 'package:flutter/material.dart';

class TextHeading extends StatelessWidget {
  final String heading;

  const TextHeading({super.key, required this.heading});


  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600
      ),
    );
  }

}