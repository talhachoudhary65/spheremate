import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ToggleContainerDemo(),
  ));
}

class ToggleContainerDemo extends StatefulWidget {
  @override
  _ToggleContainerDemoState createState() => _ToggleContainerDemoState();
}

class _ToggleContainerDemoState extends State<ToggleContainerDemo> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: 120,
          height: 80,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isToggled = !isToggled;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: 60,
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: isToggled ? Colors.tealAccent[400] : Colors.grey[400],
              ),
              child: AnimatedAlign(
                duration: Duration(milliseconds: 200),
                alignment: isToggled ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
