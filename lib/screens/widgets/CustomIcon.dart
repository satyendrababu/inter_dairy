import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {


  final String iconPath;

  CustomIcon({required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      iconPath,
      width: 26.0,
      height: 26.0,
    );
  }
  
}