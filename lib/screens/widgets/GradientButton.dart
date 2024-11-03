import 'package:inter_dairy/res/AppContextExtension.dart';
import 'package:inter_dairy/screens/widgets/MyTextView.dart';
import 'package:inter_dairy/utils/Constants.dart';

import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String? text;
  final Function? press;
  GradientButton(this.text, this.press);

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
              colors: [btnCenter, btnStart, btnStart],
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
