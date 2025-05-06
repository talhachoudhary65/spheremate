import 'package:flutter/material.dart';
import 'package:spheremate/signup.dart';

import 'Profile.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242E5B),
      body: PageView(
        controller: _pageController,

        onPageChanged: (index) => setState(() => _selectedIndex = index),
        children:[
          signup(),
          Profilr(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff242E5B),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(

            icon: Image.asset(
              "assets/images/home1.png",
              width: 24,
              height: 24,
              color: _selectedIndex == 0 ? const Color(0xff242E5B) : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/MessageIcon.png",
              width: 24,
              height: 24,
              color: _selectedIndex == 1 ? const Color(0xff242E5B) : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/ProfileIcon.png",
              width: 24,
              height: 24,
              color: _selectedIndex == 2 ? const Color(0xff242E5B) : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/FAQ.png",
              width: 24,
              height: 24,
              color: _selectedIndex == 3 ? const Color(0xff242E5B) : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/SettingIcon.png",
              width: 24,
              height: 24,
              color: _selectedIndex == 4 ? const Color(0xff242E5B) : Colors.grey,
            ),
            label: '',
          ),
        ],
      ),

    );
  }
}
