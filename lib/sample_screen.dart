import 'package:flutter/material.dart';

class SampleScreen extends StatefulWidget {
  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Sample Layout")),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  width: double.infinity,
                  color: Colors.purple,
                  child: ListView.builder(
                    itemBuilder: (context, index) => (Container(
                      margin: EdgeInsets.all(20),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Colors.white),
                    )),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                  )),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.white70,
                child: ListView.builder(
                    itemBuilder: (context, index) =>
                        ListTile(
                          title: Text("Saikumar"),
                          leading: Container(
                            margin: EdgeInsets.all(20),
                            height: 30,
                            width: 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: Colors.white),
                          ),
                          subtitle: Text("yes"),
                          trailing: Icon(Icons.delete),
                        )),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 500,
                width: double.infinity,
                color: Colors.red,
                child: GridView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.white,
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.amber,
                child: GridView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Container(
                          height: 75,
                          width: 75,
                          color: Colors.black,
                        ));
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
