import 'package:flutter/material.dart';
import 'package:practice_app/car.dart';
import 'package:practice_app/home.dart';
import 'package:practice_app/password.dart';
import 'package:practice_app/settings.dart';

class NormalBottomNavigation extends StatefulWidget {
  @override
  State<NormalBottomNavigation> createState() => _NormalBottomNavigationState();
}

class _NormalBottomNavigationState extends State<NormalBottomNavigation> {
  var my_index = 0;
  List<Widget> screenList = [
    Homescreen(),
    CarScreen(),
    PasswordScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Bottom Navigation")),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              my_index = index;
            });
          },
          currentIndex: my_index,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white,), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_crash, color: Colors.white), label: "Car"),
            BottomNavigationBarItem(
                icon: Icon(Icons.password, color: Colors.white), label: "Password"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Colors.white), label: "Settings"),
          ]),
      body: screenList[my_index],
    );
  }
}
