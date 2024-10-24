import 'package:flutter/material.dart';

class MyTextView extends StatelessWidget {
  final String label;
  final Color color;
  final double fontSize;

  MyTextView(this.label, this.color, this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      //maxLines: 1,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
      ),
    );
  }

}
