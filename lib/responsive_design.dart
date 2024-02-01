import 'package:flutter/material.dart';
import 'package:practice_app/desktop_design.dart';
import 'package:practice_app/mobile_design.dart';
import 'package:practice_app/responsive_layout.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ResponsiveLayout(mobileBody: MobileDesign(), desktopBody: DesktopDesign()),
      ),
    );
  }
}
