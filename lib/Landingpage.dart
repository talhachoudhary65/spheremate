import 'package:flutter/material.dart';


import 'Faq.dart';
import 'Home.dart';
import 'Message.dart';
import 'Profile.dart';
import 'Setting.dart';

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
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease, // smooth and natural transition
    );
  }

  void _onDoubleTap() {
    int nextIndex = (_selectedIndex + 1) % 5; // Loop back to 0 if at last index
    setState(() {
      _selectedIndex = nextIndex;
    });
    _pageController.animateToPage(
      nextIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: _onDoubleTap,
      child: Scaffold(
        backgroundColor: const Color(0xff242E5B),
        body: PageView(
          controller: _pageController,
          physics: const BouncingScrollPhysics(),
          onPageChanged: (index) => setState(() => _selectedIndex = index),
          children: [
            Home(),
            Message(),
            Profilr(),
            Faq(),
            Setting(),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Container(
            height: 70, // or 70 max, safely within limits
            color: Colors.white,
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedItemColor: const Color(0xff242E5B),
              unselectedItemColor: Colors.grey,
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              onTap: _onItemTapped,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
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
          ),
        ),


      ),
    );
  }
}
