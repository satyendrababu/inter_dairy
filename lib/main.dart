import 'package:flutter/material.dart';
import 'package:inter_dairy/screens/splash/SplashScreen.dart';
import 'package:inter_dairy/theme.dart';
import 'package:inter_dairy/utils/Routes.dart';


void main() {
  /*SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xff6A5CD8)));*/

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: '',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: routes,
    );
  }
}

