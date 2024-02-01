import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice_app/all_products.dart';
import 'package:practice_app/basic_calculator.dart';
import 'package:practice_app/bmi_calculator.dart';
import 'package:practice_app/loginScreen.dart';
import 'package:practice_app/plant_detail.dart';

class IntroScreen extends StatefulWidget {

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginUsingApi(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Shopping",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),),
            ],
          ) ,
        ),
      ),
    );
  }
}