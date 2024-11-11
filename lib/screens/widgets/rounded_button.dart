
import 'package:flutter/material.dart';
import 'package:inter_dairy/res/AppContextExtension.dart';

import '../../utils/Constants.dart';
import 'MyTextView.dart';

class RoundedButton extends StatelessWidget {
  final String? text;
  final Function? press;
  RoundedButton(this.text, this.press);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: TextButton(
        onPressed: press as void Function()?,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [btnColor, btnColor, btnColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(26),
          ),
          child: Center(
            child: MyTextView(
              text!,
              context.resources.color.colorWhite,
              16,
            ),
          ),
        ),
      ),
    );
  }
}