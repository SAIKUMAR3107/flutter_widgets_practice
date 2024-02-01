import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:practice_app/password.dart';
import 'package:practice_app/settings.dart';

import 'car.dart';
import 'home.dart';

class GoogleBottomNavigation extends StatefulWidget {
  @override
  State<GoogleBottomNavigation> createState() => _GoogleBottomNavigationState();
}

class _GoogleBottomNavigationState extends State<GoogleBottomNavigation> {
  var my_index = 0;
  List<Widget>  screenList = [
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
      body: screenList[my_index],
      bottomNavigationBar: GNav(onTabChange: (value) {
        setState(() {
            my_index = value;
        });
      }, tabBackgroundColor: Colors.white12,hoverColor: Colors.white70,gap: 10,tabs: [
        GButton(
          icon: Icons.home,
          text: "Home",
        ),
        GButton(
          icon: Icons.favorite_border,
          text: "Favorite",
        ),
        GButton(
          icon: Icons.person,
          text: "Profile",
        ),
        GButton(
          icon: Icons.settings,
          text: "Settings",
        ),
      ]),
    );
  }
}
