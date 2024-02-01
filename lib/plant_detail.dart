import 'package:flutter/material.dart';
import 'package:practice_app/basic_calculator.dart';
import 'package:practice_app/counter.dart';

class PlantDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Plant Details")),),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.password),label: "Password",),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",),
        ],
      ),
      body:  SingleChildScrollView(
        child: Container(
              child: Column(
                children: [
                  Container(
                      height: 300,
                      margin: EdgeInsets.only(top: 10,right: 10),
                      child:
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                               child: Row(
                                 children: [
                                   Container(
                                     height: 300,
                                     width: 100,
                                     margin: EdgeInsets.only(left: 10),
                                     color: Colors.white,
                                   ),
                                   Container(
                                     height: 300,
                                     width: 100,
                                     color: Colors.white,
                                     margin: EdgeInsets.only(left: 10),
                                   ),
                                   Container(
                                     height: 300,
                                     width: 100,
                                     color: Colors.white,
                                     margin: EdgeInsets.only(left: 10),
                                   ),
                                   Container(
                                     height: 300,
                                     width: 100,
                                     color: Colors.white,
                                     margin: EdgeInsets.only(left: 10),
                                   ),
                                   Container(
                                     height: 300,
                                     width: 100,
                                     color: Colors.white,
                                     margin: EdgeInsets.only(left: 10),
                                   ),
                                   Container(
                                     height: 300,
                                     width: 100,
                                     color: Colors.white,
                                     margin: EdgeInsets.only(left: 10),
                                   ),
                                   Container(
                                     height: 300,
                                     width: 100,
                                     color: Colors.white,
                                     margin: EdgeInsets.only(left: 10),
                                   ),
                                   Container(
                                     height: 300,
                                     width: 100,
                                     color: Colors.white,
                                     margin: EdgeInsets.only(left: 10),
                                   ),
                                 ],
                               ),
                            ),
                          )
                    ),
                  Container(height:600,
                      margin:EdgeInsets.all(10),child: Image.asset("assets/images/41021.jpg")),
                  Text("jbsdjbjbisbjbckbsbdj"
                      "jbhjlqbfbjd"
                      "jsbdbbdsbs"
                      "bghbjhlghjhjjf"
                      "fytfkhvhjfkyufhjv"
                      "jbsdjbjbisbjbckbsbdj"
                      "jbhjlqbfbjd"
                      "jsbdbbdsbs"
                      "bghbjhlghjhjjf"
                      "fytfkhvhjfkyufhjv"
                      "",style: TextStyle(fontSize: 40,color: Colors.white),)
                ],
              ),
          ),
      ),

    );
  }

}