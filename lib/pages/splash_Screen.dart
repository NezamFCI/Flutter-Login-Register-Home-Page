import 'dart:async';

import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 4),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage())),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            //Color(0xff4dd0e1),
            Colors.cyan,
            Colors.pinkAccent,
            Color(0xff4dd0e1)
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/shop.png',
                height: 260.0,
                width: 320.0,
              ),
              const Text(
                'Easy Shop...',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Column(
            children: const [
              CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3.0,
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                'Loading...',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
