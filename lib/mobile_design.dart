import 'package:flutter/material.dart';

class MobileDesign extends StatelessWidget {
  const MobileDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(" M O B I L E "))),
      backgroundColor: Colors.green,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              margin: EdgeInsets.all(10),
              height: 300,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 75,
                  width: double.infinity,
                  color: Colors.grey,
                );
              },
              itemCount: 30,
            ),
          )
        ],
      ),
    );
  }
}
