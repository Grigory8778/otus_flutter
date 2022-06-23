import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashScreen() {
    Timer(const Duration(seconds: 4), () async {
      Navigator.pop(context, MaterialPageRoute(builder: (c) => const HomeScreen()));
    });
  }

  @override
  void initState() {
    splashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xFF2ECC71),
            Color(0xFF165932),
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Center(
          child: Image.asset(
        'assets/splash.png',
        height: 282,
        width: 282,
      )),
    );
  }
}
