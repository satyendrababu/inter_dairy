import 'package:inter_dairy/res/AppContextExtension.dart';
import 'package:flutter/material.dart';

class AppLogoBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2)
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 80,
              child: Image.asset('assets/images/nda.png'),
            ),
          ),
          SizedBox(width: 50,),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 8),
              height: 80,
              child: Image.asset('assets/images/va2.png'),
            ),
          ),
        ],
      ),
    );
  }


}