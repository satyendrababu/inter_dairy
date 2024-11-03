import 'package:inter_dairy/res/AppContextExtension.dart';
import 'package:flutter/material.dart';

class IconBg extends StatelessWidget {
  final String icon;

  const IconBg({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      child: Container(
        padding: EdgeInsets.all(14),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: context.resources.color.colorIconBg,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 20,
          width: 20,
          child: Image.asset(
            icon
          ),
        )
      ),
    );
  }
  
}