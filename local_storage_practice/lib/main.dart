import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

void main() async {
  await initLocalStorage();
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

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textToStore = TextEditingController();
  String _storedText = '';

  void _retrieveStoredText() {
    final storedText = localStorage.getItem("text");
    if (storedText != null) {
      setState(() {
        _storedText = storedText;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                TextField(
                  controller: _textToStore,
                  decoration: const InputDecoration(
                      labelText: 'Text to store',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    localStorage.setItem("text", _textToStore.text);
                  },
                  child: const Text('Store text'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: _retrieveStoredText,
                  child: const Text('Get text'),
                ),
                const SizedBox(height: 10),
                Text(
                  _storedText,
                  style: const TextStyle(fontSize: 24),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
