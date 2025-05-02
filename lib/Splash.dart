import 'dart:async';
import 'package:flutter/material.dart';
import 'onboarding.dart'; // Make sure onboarding.dart is in the same directory

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Navigate to OnBoarding screen after 0.5 seconds
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OnBoarding()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242E5B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/images/WelcomeText.png", scale: 5),
          ),
          const SizedBox(height: 10),
          Center(
            child: Image.asset("assets/images/sphereMate-Logo.png", scale: 3),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              "to SphereMate!",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Montserrat",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
