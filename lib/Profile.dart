import 'package:flutter/material.dart';

class Profilr extends StatelessWidget {
  const Profilr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242E5B),
      appBar: AppBar(
        backgroundColor: const Color(0xff242E5B),
        title: const Text(
          "MY PROFILE",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        leading: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        leadingWidth: 60,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Divider(
            thickness: 2,
            color: Colors.white,
            height: 1,
            indent: 0,
            endIndent: 0,
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Followers
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xff50E3C1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        "329",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Followers",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(width: 25,),
                // Following
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff50E3C1)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        "178",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Following",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),




        ],
      ),
    );
  }
}
