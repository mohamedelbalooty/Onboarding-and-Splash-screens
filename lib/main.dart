import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'introPage/introductionPage.dart';
import 'introPage/splashPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.id,
      routes: {
        SplashPage.id: (context) => SplashPage(),
        OnboardingScreen.id: (context) => OnboardingScreen(),
      },
    );
  }
}
