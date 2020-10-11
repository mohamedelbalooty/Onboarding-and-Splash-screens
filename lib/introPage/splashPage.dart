import 'dart:async';
import 'package:flutter/material.dart';
import 'introductionPage.dart';

class SplashPage extends StatefulWidget {
  static String id = 'SplashPage';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnboardingScreen.id);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/introPage/splash.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.red.withOpacity(0.85),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Image.asset(
              'assets/images/introPage/logo.png',
              height: width * 0.7,
              width: width * 0.7,
            ),
          ),
        ),
      ],
    );
  }
}
