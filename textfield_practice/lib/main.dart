import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Concatination of Strings'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _result = '';

  void _concatinate() {
    setState(() {
      _result = _controller1.text + _controller2.text;
    });
  }

  void _subtract() {
    setState(() {
      _result = _controller1.text.replaceAll(_controller2.text, '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                TextField(
                  controller: _controller1,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter first string',
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _controller2,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter second string',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: WidgetStateProperty.all<Size>(const Size(130, 40)),
                  ),
                  onPressed: _concatinate,
                  child: const Text('Concatinate'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: WidgetStateProperty.all<Size>(const Size(130, 40)),
                  ),
                  onPressed: _subtract,
                  child: const Text('Subtract'),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Text(
              _result,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),);
  }
}
