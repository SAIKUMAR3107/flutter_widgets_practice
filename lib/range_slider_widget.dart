import 'package:flutter/material.dart';

class RangeSliderScreen extends StatefulWidget {
  @override
  _RangeSliderState createState() => _RangeSliderState();
}

class _RangeSliderState extends State<RangeSliderScreen> {
  RangeValues value = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    RangeLabels labels = RangeLabels(
        value.start.toString(), value.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Range Slider")),
      ),
      body: Center(
        child: Container(
            child: RangeSlider(values: value,
                divisions: 10,
                min: 0,
                max: 100,
                labels: labels,
                activeColor: Colors.lightGreenAccent,
                inactiveColor: Colors.red,
                onChanged: (newValue) {
                  value = newValue;
                  setState(() {

                  });
                })),
      ),
    );
  }
}
