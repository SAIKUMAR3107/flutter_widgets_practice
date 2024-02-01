import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//This file contains information about Rich text and Icon and Font awesome widgets
class RichTextClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Rich Text")),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 35, color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(text: "Hiii "),
                      TextSpan(text: "SAI",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 68,fontStyle: FontStyle.italic,fontFamily: "Lobster")),
                      TextSpan(text: "Kumar",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 50,fontStyle: FontStyle.italic,fontFamily: "Lobster"))
                    ]),
              ),
              Icon(Icons.ac_unit,size: 150,color: Colors.orange,),
              FaIcon(FontAwesomeIcons.googleWallet,size: 150, color: Colors.orange ,),
            ],
          ),
        ));
  }
}

/*Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello ", style: TextStyle(fontSize: 15),),
            Text("Saikumar",style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold),)
          ],
        ),
      ),*/
