import 'package:inter_dairy/res/AppContextExtension.dart';

import 'package:flutter/material.dart';

class IconSocialMedia extends StatelessWidget {
  final String icon;

  const IconSocialMedia({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: Container(
        padding: EdgeInsets.all(8),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: context.resources.color.colorWhite,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Container(
            height: 20,
            width: 20,
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Color(0xff363273),  // Change this color to the desired color
                BlendMode.srcIn,
              ),
              child: Image.asset(
                icon
              ),
            ),
          ),
        )
      ),
    );
  }
  
}