import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMICalculator extends StatefulWidget {
  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  var weight = TextEditingController();
  var heightInFeet = TextEditingController();
  var heightInInch = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI Calculator")),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BMI",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: weight,
                  decoration: InputDecoration(prefixIcon: FaIcon(FontAwesomeIcons.weightScale,),label: Text("Enter weight (in KGs)"),border: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.white))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: heightInFeet,
                  decoration: InputDecoration(prefixIcon: FaIcon(FontAwesomeIcons.scaleBalanced),label: Text("Enter Height (in Feet)"),border: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.white))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: heightInInch,
                  decoration: InputDecoration(prefixIcon: FaIcon(FontAwesomeIcons.scaleUnbalancedFlip),label: Text("Enter height (in inch)"),border: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.white))),
                ),
              ),
              ElevatedButton(onPressed: (){
                var wt = weight.text.toString();
                var htI = heightInInch.text.toString();
                var htF = heightInFeet.text.toString();
                if(wt.isNotEmpty && htF.isNotEmpty && htI.isNotEmpty){

                  var iwt = int.parse(wt);
                  var ift = int.parse(htF);
                  var iInch = int.parse(htI);

                  var tInch = (ift*12) + iInch;
                  var tCm = tInch*2.54;
                  var tm = tCm/100;

                  var bmi = iwt/(tm*tm);
                  setState(() {
                    result = "Your BMI is : " + bmi.toStringAsFixed(4);
                  });


                }
                else{
                  setState(() {
                    result = "Enter All Values";
                  });

                }
              }, child: Text("Click to check BMI")),
              SizedBox(height: 20,),
              Text("$result",style: TextStyle(fontSize: 20,color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
