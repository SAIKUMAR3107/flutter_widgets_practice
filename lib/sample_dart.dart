import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Tooltip(
            message: "App Title",
            waitDuration: Duration(seconds: 2),
            showDuration: Duration(seconds: 3),
            child: Text("Sample Code")),
      ),
      body: Tooltip(
        message: "Entire Screen",
        child: Container(
          height: double.infinity,
          child: Column(
            children: [
              /*SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text("Saikumar-1 ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  Text("Saikumar-2 ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  Text("Saikumar-3 ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  Text("Saikumar-4 ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  Text("Saikumar-5 ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                ],
              ),
            ),*/
              Container(
                height: 200,
                width: double.infinity,
                child: GridView.builder(
                  itemBuilder: (context, index) {
                    return Tooltip(
                        message: "Grid Container",
                        showDuration: Duration(seconds: 5),
                        waitDuration: Duration(seconds: 3),
                        child: Container(
                          color: Colors.green,
                          height: 100,
                          width: 100,
                        ));
                  },
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                ),
              ),
              Container(
                height: 200,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: 50,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Tooltip(
                              message: "Container",
                              child: Container(
                                width: 30,
                                color: Colors.white,
                              )),
                        );
                      }),
                ),
              ),
              Tooltip(message: "Sized Box",child: SizedBox(height: 20,width: double.infinity,child: ElevatedButton(onPressed: () {
                print("Hi");
              }, child: Text("Click me"),),)),
              Center(child: Text("Saikumar",style: TextStyle(fontSize: 40,color: Colors.white)),)
            ],
          ),
        ),
      ),
    );
  }
}
/* Column(
              children: [
                Text("Saikumar 1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                Text("Saikumar 2",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                Text("Saikumar 3",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                Text("Saikumar 4",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                Text("Saikumar 5",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              ],
            )*/
