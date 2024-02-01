import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  var name;
  var id;
  Screen2(this.name,this.id);
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Profile Screen")),),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome $name and $id",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back")),
            ],
          ),
        ),
      ),
    );
  }

}