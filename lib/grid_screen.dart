import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  var arrayOf = [Colors.white70,Colors.pink,Colors.deepPurple,Colors.amber,Colors.brown,Colors.grey,Colors.green,Colors.orange,Colors.purple];
  callback(){
    print("Click on Button");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Grid Layout",)),
      ),
      body: GridView.builder(itemBuilder: (context,index){
        return Container(color: arrayOf[index],);
      },itemCount: arrayOf.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
      ) ,)

    );
  }
}

// Sample codes
/*SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me"))
                ,ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Click me")),
                ElevatedButton(onPressed : (){
                  print("Saikumar");
                }, child: Text("Saikumar")),





              ],
            ),
          ),
        ),
      )*/

/*Column(
        children: [
          ElevatedButton(onPressed : callback, child: Text("Click me")),
         */
/* GridView.count(crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(10),
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
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            ),Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.grey,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.brown,
            ),
            Container(

              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            Container(

              height: 100,
              width: 100,
              color: Colors.deepPurple,
            ),Container(

              height: 100,
              width: 100,
              color: Colors.pink,
            ),Container(

              height: 100,
              width: 100,
              color: Colors.white70,
            ),
          ],),*//*
        ],
      )*/