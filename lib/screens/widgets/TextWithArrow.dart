import 'package:flutter/material.dart';

class TextWithArrow extends StatelessWidget {
  final String text;
  const TextWithArrow({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: SizedBox(
            height: 20,
            width: 25,
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.white,  // Change this color to the desired color
                BlendMode.srcIn,
              ),
              child: Image.asset(
                  'assets/icons/arrow_right.png'
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        ),
        //const SizedBox(height: 16,)
      ],
    );
  }

}