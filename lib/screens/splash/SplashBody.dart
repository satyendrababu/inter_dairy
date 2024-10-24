import 'package:inter_dairy/screens/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:inter_dairy/res/AppContextExtension.dart';
import 'package:inter_dairy/screens/widgets/AppLogoBottom.dart';
import 'package:inter_dairy/screens/widgets/AppLogoTop.dart';
import 'package:inter_dairy/screens/widgets/GradientButton.dart';
import 'package:inter_dairy/screens/widgets/MyButton.dart';
import 'package:inter_dairy/screens/widgets/MyTextView.dart';
import 'package:inter_dairy/utils/size_config.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.02),

                AppLogoTop(),
                const Spacer(),
                const Text(
                  'International exhibition for\n complete value chain of dairy\n industry',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                const Text(
                  '05-06-07 December, 2024',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),

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
                const Spacer(flex: 2,),
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
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: const Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat-Regular.ttf',
                        color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),

                //AppLogoBottom(),
                /*Container(
                  width: SizeConfig.screenWidth,
                  height: 100,
                  child: Image.asset('assets/images/banner_bottom.PNG'),
                ),*/

              ],
            ),
          ),
        ],

      ),
    );
  }

}