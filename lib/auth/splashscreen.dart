import 'package:flutter/material.dart';
import 'dart:async';

import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF57A9E1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/Logo Basic Shop 1.png',
              height: 185,
              width: 132,),
          ),

          SizedBox(height: 20),

          Text('Basic Shop',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),

          SizedBox(height: 15),

          Text('Fulfill Your Daily Needs',
            style: TextStyle(
                fontSize: 16
            ),)
        ],
      ),
    );
  }
}