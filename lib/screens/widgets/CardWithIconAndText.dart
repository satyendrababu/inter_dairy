import 'package:inter_dairy/screens/widgets/IconBg.dart';
import 'package:flutter/material.dart';

class CardWithIconAndText extends StatelessWidget {
  final String icon;
  final String text;

  const CardWithIconAndText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
      ),
      color: Colors.white,
      child: ListTile(
        leading: IconBg(icon: icon),
        title: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14
          ),
        ),
      ),
    );
  }

}