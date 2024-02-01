import 'package:flutter/material.dart';

class TextDirections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Text Direction")),),
      body: Container(
          
        child: Column(
          children: [
            Container(
                width:double.infinity ,child: Text("Saikumar",textAlign:TextAlign.right,style: TextStyle(color: Colors.white,fontSize: 30,),)),
          ],
        ),
      ),
    );
  }

}