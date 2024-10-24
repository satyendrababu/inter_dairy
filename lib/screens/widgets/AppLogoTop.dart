import 'package:inter_dairy/res/AppContextExtension.dart';
import 'package:inter_dairy/screens/widgets/MyTextView.dart';
import 'package:flutter/material.dart';

class AppLogoTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2)
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        margin: EdgeInsets.all(8),
        height: 80,
        width: double.infinity,
        child: Image.asset('assets/images/dairy.png'),
      ),
      /*child: Row(
        children: [
          Expanded(
            child: Container(
              height: 80,
              child: Image.asset('assets/icons/dairy.png'),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 16),
              height: 80,
              child: Image.asset('assets/icons/logo.png'),
            ),
          ),
        ],
      ),*/
    );
  }
}
