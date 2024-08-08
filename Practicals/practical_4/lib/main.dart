// Name: Parin Shah
// Enrollment Number: 202203103510105
// Branch: B. Tech. Computer Science and Engineering
// Practical 4: Create a flutter app having a Slider and a Text widget. Display updated value in Text widget whenever user changes Slider value.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderTextPage(),
    );
  }
}

class SliderTextPage extends StatefulWidget {
  @override
  _SliderTextPageState createState() => _SliderTextPageState();
}

class _SliderTextPageState extends State<SliderTextPage> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider and Text Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Slider Value: ${_sliderValue.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24),
            ),
            Slider(
              value: _sliderValue,
              min: 0.0,
              max: 100.0,
              divisions: 100,
              label: _sliderValue.toStringAsFixed(2),
              onChanged: (double newValue) {
                setState(() {
                  _sliderValue = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
