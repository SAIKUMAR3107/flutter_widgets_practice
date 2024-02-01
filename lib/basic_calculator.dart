import 'package:flutter/material.dart';

class BasicCalculator extends StatefulWidget {
  @override
  State<BasicCalculator> createState() => _BasicCalculatorState();
}

class _BasicCalculatorState extends State<BasicCalculator> {
  var firstField = TextEditingController();
  var secondField = TextEditingController();
  var result = "";

  int? cal(int first, int second, String text) {
    var first = int.parse(firstField.text.toString());  
    var second = int.parse(secondField.text.toString());
    if (text == "ADD") {
      return first + second;
    } else if (text == "SUB") {
      return first - second;
    } else if (text == "MUL") {
      return first * second;
    } else if (text == "DIV") {
      return (first / second).round();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Basic Calculator"))),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: firstField,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.red),
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.green)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.green))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: secondField,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.green),
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.green)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            var text = "ADD";
                            var sum = cal(int.parse(firstField.text.toString()),
                                int.parse(secondField.text.toString()), text);
                            result = sum.toString();
                            firstField.clear();
                            secondField.clear();
                          });
                        },
                        child: Text("Add")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            var text = "SUB";
                            var sum = cal(int.parse(firstField.text.toString()),
                                int.parse(secondField.text.toString()), text);
                            result = sum.toString();
                            firstField.clear();
                            secondField.clear();
                          });
                        },
                        child: Text("Sub")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            var text = "MUL";
                            var sum = cal(int.parse(firstField.text.toString()),
                                int.parse(secondField.text.toString()), text);
                            result = sum.toString();
                            firstField.clear();
                            secondField.clear();
                          });
                        },
                        child: Text("Mul")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            var text = "DIV";
                            var sum = cal(int.parse(firstField.text.toString()),
                                int.parse(secondField.text.toString()), text);
                            result = sum.toString();
                            firstField.clear();
                            secondField.clear();
                          });
                        },
                        child: Text("Div")),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Result is : $result",
                style: TextStyle(fontSize: 30, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
