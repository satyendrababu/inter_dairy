
import 'package:inter_dairy/screens/splash/SplashBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  static const String id = "splash_screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xff6A5CD8),
        systemNavigationBarColor: Colors.white));*/
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xff0892D1),));

    return const Scaffold(
      body: SplashBody(),

    );

  }

}