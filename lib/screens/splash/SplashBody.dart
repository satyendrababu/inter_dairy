import 'package:inter_dairy/screens/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:inter_dairy/res/AppContextExtension.dart';
import 'package:inter_dairy/screens/widgets/AppLogoBottom.dart';
import 'package:inter_dairy/screens/widgets/AppLogoTop.dart';
import 'package:inter_dairy/screens/widgets/GradientButton.dart';
import 'package:inter_dairy/screens/widgets/MyButton.dart';
import 'package:inter_dairy/screens/widgets/MyTextView.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Stack(
        children: [

          Positioned.fill(
              child: Image.asset(
                'assets/images/splash_image.png',
                fit: BoxFit.cover,
              )
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 50),

                AppLogoTop(),
                SizedBox(height: 50),
                const Text(
                  'International exhibition for\n complete value chain of dairy\n industry',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 20),
                const Text(
                  '05-06-07 December, 2024',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: const Text(
                    'Bombay Exhibition Center, \n Mumbai',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Montserrat-Regular.ttf',
                        color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 200),
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 0, right: 90, bottom: 0),
                  child: GradientButton(
                      "Let's Go",
                          () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()));
                      }
                  ),
                ),
                SizedBox(height: 20),


              ],
            ),
          ),
        ],

      ),
    );
  }

}