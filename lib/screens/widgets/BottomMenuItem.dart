import 'package:flutter/material.dart';

class BottomMenuItem extends StatelessWidget {

  final String iconPath;
  final String label;
  final Color textColor;
  BottomMenuItem({required this.iconPath, required this.label, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          iconPath,
          width: 24.0,
          height: 24.0,
        ),
        Text(
          label,

          style: TextStyle(
            color: textColor,
            fontSize: 12,
            fontWeight: FontWeight.w500
          ),
        ),
      ],
    );
  }

}