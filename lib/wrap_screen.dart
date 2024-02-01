import 'package:flutter/material.dart';

class WrapScreen extends StatefulWidget{
  @override
  State<WrapScreen> createState() => _WrapScreenState();
}

class _WrapScreenState extends State<WrapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wrap Screen"),
      ),
      body: Wrap(
        direction: Axis.vertical,
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.center ,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green[400],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green[400],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green[400],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}