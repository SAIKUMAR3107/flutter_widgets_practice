import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Stack Implementation")),
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 25,
              left: 25,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 300,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 100,
                  maxHeight: 300,
                  minWidth: 100,
                  maxWidth: 300,
                ),
                child: ElevatedButton(onPressed: (){}, child: Text("Click me jjhjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj!!")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
