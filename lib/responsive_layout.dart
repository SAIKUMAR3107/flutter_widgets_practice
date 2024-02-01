import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final mobileBody;
  final desktopBody;
  const ResponsiveLayout({required this.mobileBody,required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth > 600){
        return desktopBody;
      }
      else{
        return mobileBody;
      }
    },);
  }
}
