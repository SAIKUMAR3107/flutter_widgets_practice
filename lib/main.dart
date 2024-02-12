import 'package:flutter/material.dart';
import 'package:practice_app/all_products.dart';
import 'package:practice_app/bottom_navigation.dart';
import 'package:practice_app/counter.dart';
import 'package:practice_app/download_progress.dart';
import 'package:practice_app/google_bottom_navigation.dart';
import 'package:practice_app/grid_screen.dart';
import 'package:practice_app/loginScreen.dart';
import 'package:practice_app/notification_functionality.dart';
import 'package:practice_app/notification_service.dart';
import 'package:practice_app/passing_data_screen1.dart';
import 'package:practice_app/plant_detail.dart';
import 'package:practice_app/positioned.dart';
import 'package:practice_app/range_slider_widget.dart';
import 'package:practice_app/responsive_design.dart';
import 'package:practice_app/rich_text.dart';
import 'package:practice_app/sample_dart.dart';
import 'package:practice_app/sample_screen.dart';
import 'package:practice_app/spalsh_calculator.dart';
import 'package:practice_app/stack_implementation.dart';
import 'package:practice_app/text_direction.dart';
import 'package:practice_app/url_navigation.dart';
import 'package:practice_app/wrap_screen.dart';

import 'SecondScreen.dart';
import 'basic_calculator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "New Application",
        theme: ThemeData(
          brightness: Brightness.dark,
            /*textTheme: TextTheme(

                displayLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: "Lobster"),
                titleMedium: TextStyle(fontSize: 20, fontFamily: "Lobster"))*/),
        home: NotificationServices() /*Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text("My Practice App")),
          backgroundColor: Colors.red,
        ),
        body: */ /*Container(
          height: double.infinity,
          width: double.infinity,
          child: Center(
              child: Text(
            "Welcome to My World",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),*/ /*
      ),*/
        );
  }
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class Styling extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
            child: Text("Practice App",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "Lobster"))),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 250,
                  color: Colors.amber,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          color: Colors.black,
                        ),
                        Container(
                          width: 50,
                          color: Colors.white,
                        ),
                        Container(
                          width: 50,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 50,
                          color: Colors.brown,
                        ),
                        Container(
                          width: 50,
                          color: Colors.purple,
                        ),
                        Container(
                          width: 50,
                          color: Colors.white,
                        ),
                        Container(
                          width: 50,
                          color: Colors.green,
                        ),
                        Container(
                          width: 50,
                          color: Colors.grey,
                        ),
                        Container(
                          width: 50,
                          color: Colors.black,
                        ),
                        Container(
                          width: 50,
                          color: Colors.white,
                        ),
                        Container(
                          width: 50,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 50,
                          color: Colors.brown,
                        ),
                        Container(
                          width: 50,
                          color: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 250,
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 250,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 250,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 250,
                  color: Colors.orange,
                ),
                InkWell(
                  onTap: (){
                    print("You Tapped purple Color ");
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 250,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

*/
