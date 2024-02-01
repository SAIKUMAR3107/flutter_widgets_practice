import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Positioned")),),
      body: Container(
        color: Colors.blueGrey,
        height: 500,
        child: Stack(
          children: [
            Positioned(
              bottom: 100,
              left: 100,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
            )
          ],
        ),
      )
    );
  }

}