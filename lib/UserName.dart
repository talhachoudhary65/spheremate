import 'package:flutter/material.dart';
class Username extends StatelessWidget {
  const Username({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242E5B),
      appBar: AppBar(
        backgroundColor: const Color(0xff242E5B),
        title: const Text(
          "SETTINGS",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        leading: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        leadingWidth: 60,
      ),

    );
  }
}
