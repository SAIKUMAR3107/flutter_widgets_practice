import 'package:flutter/material.dart';
import 'package:practice_app/text_style.dart';
import 'package:intl/intl.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int a = 0;

  var email = TextEditingController();

  var password = TextEditingController();
  DateTime? dates;

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
          "Second Screen",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, fontFamily: "Lobster"),
        ))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 400,
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.mail),
                      prefixIconColor: Colors.red,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.blue)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.red))),
                ),
              ),
              Container(
                width: 400,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: password,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.red,
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {
                          print("Icon Pressed");
                        },
                      ),
                      hintText: "Password",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.blue)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: Colors.red))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {});
                      print("Email : ${email.text.toString()}");
                      print("Password : ${password.text.toString()}");
                    },
                    child: Text("Login")),
              ),
              Text(
                "${email.text.toString()} you have logged at ${DateFormat("jms").format(time)}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? sets = await showDatePicker(
                            context: context,
                            initialDate: time,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2500));
                    print("${sets?.day}-${sets?.month}-${sets?.year}");
                    setState(() {
                      print("${dates?.year}");
                    });
                    dates = sets;
                  },
                  child: Text("Choose date")),
              Text(
                "${dates?.day}-${dates?.month}-${dates?.year}",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ));
  }

  int count(int a) {
    return a++;
  }
}
