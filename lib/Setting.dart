import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isToggled = false;

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
      body: Column(
        children: [
          const Divider(),
          const SizedBox(height: 20),
          Container(
            height: 100,
            width: 350,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(0xffE4E4E4),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left side text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Switch Mode",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 1),
                    Text(
                      isToggled
                          ? "You are currently in Passenger Mode.\nSwitch to Driver Mode"
                          : "You are currently in Driver Mode.\nSwitch to Passenger Mode",
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),

                // Right side toggle
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isToggled = !isToggled;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: 50,
                    height: 26,
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isToggled ? Colors.tealAccent[400] : Colors.grey[400],
                    ),
                    child: AnimatedAlign(
                      duration: const Duration(milliseconds: 200),
                      alignment: isToggled ? Alignment.centerRight : Alignment.centerLeft,
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 240),
            child: Text("My Profile",style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset("assets/images/line.png"),
          ),

          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 170),
            child: Text("Change Password",style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset("assets/images/line.png"),
          ),

          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 275),
            child: Text("About",style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset("assets/images/line.png"),
          ),

          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: Text("Contact Us",style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset("assets/images/line.png"),
          ),

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 280),
            child: Text("FAQ's",style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset("assets/images/line.png"),
          ),

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text("Privacy Policy",style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset("assets/images/line.png"),
          ),

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 180),
            child: Text("Terms & Services",style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset("assets/images/line.png"),
          ),

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 260),
            child: Text("Rate Us",style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset("assets/images/line.png"),
          ),
          const SizedBox(height: 40),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color:Colors.red,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text("SIGN OUT",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
