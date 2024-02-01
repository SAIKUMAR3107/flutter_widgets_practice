import 'package:flutter/material.dart';
import 'package:practice_app/passing_data_screen2.dart';

class Screen1 extends StatelessWidget {
  var id = 1;
  var username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Screen 1")),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enter Your Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(width: 2)),),
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2(username.text.toString(),id),));
              }, child: Text("Update Profile"))
            ],
          ),
        ),
      ),
    );
  }
}
