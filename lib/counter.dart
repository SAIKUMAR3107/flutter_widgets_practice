import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Counter App")),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter",style: TextStyle(fontSize: 40),),
            ElevatedButton(onPressed: (){
              setState(() {
                counter++;
              });
            }, child: Text("Click to Increment")),
            ElevatedButton(onPressed: (){
              setState(() {
                if(counter != 0){
                  counter--;
                }
              });
            }, child: Text("Click to Decrement"))
          ],
        )
      ),
    );
  }
}