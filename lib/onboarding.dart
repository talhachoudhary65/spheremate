import 'package:flutter/material.dart';
import 'dart:async';

import 'login.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff242E5B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text(
                "We are Happy\nto see You Here!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Car.png"),
                fit:BoxFit.fitWidth
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Let's have a Chat\nwith Drivers!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height:11),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => login()),
              );
            },
            child: Text("Go to Next Screen"),
          )
        ],
      ),
    );
  }
}
