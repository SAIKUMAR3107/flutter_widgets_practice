import 'package:flutter/material.dart';

class DesktopDesign extends StatelessWidget {
  const DesktopDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(" D E S K T O P "))),
      body: Row(
        children: [
          Expanded(
            child: Column(
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
                ),

              ],
            ),
          ),
          Container(margin: EdgeInsets.all(10),width: 300,color: Colors.purple,
          child: Column(
            children: [
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
              ),

            ],
          ),)
        ],
      ),
    );
  }
}
