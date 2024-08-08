// Name: Parin Shah
// Enrollment Number: 202203103510105
// Branch: B. Tech. Computer Science and Engineering
// Practical 3: Develop a flutter app with two TextField widgets, a Text widget, and an ElevatedButton widget. On tap of the ElevatedButton, compute the sum of two values from TextFields and display the result in Text widget.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sum Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SumCalculator(),
    );
  }
}

class SumCalculator extends StatefulWidget {
  @override
  _SumCalculatorState createState() => _SumCalculatorState();
}

class _SumCalculatorState extends State<SumCalculator> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _result = '';

  void _calculateSum() {
    final int value1 = int.tryParse(_controller1.text) ?? 0;
    final int value2 = int.tryParse(_controller2.text) ?? 0;
    final int sum = value1 + value2;
    setState(() {
      _result = 'Sum: $sum';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sum Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter first number',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter second number',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _calculateSum,
              child: const Text('Calculate Sum'),
            ),
            const SizedBox(height: 16),
            Text(
              _result,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
