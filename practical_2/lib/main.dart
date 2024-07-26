import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _currentTheme = emeraldTheme;
  String _currentThemeName = "EmeraldTheme";

  static final ThemeData emeraldTheme = ThemeData(
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.green[50],
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.green),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
      ),
    ),
  );

  static final ThemeData rubyTheme = ThemeData(
    primaryColor: Colors.red,
    scaffoldBackgroundColor: Colors.red[50],
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.red),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
      ),
    ),
  );

  void _toggleTheme() {
    setState(() {
      if (_currentTheme == emeraldTheme) {
        _currentTheme = rubyTheme;
        _currentThemeName = "RubyTheme";
      } else {
        _currentTheme = emeraldTheme;
        _currentThemeName = "EmeraldTheme";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: _currentTheme,
      home: Container(
        color: Colors.red, // Container color for Practical2
        child: MaterialApp(
          title: 'MyApp',
          theme: _currentTheme,
          home: Scaffold(
            backgroundColor: Colors.yellow, // Scaffold color
            appBar: AppBar(
              title: const Text('MyApp'),
            ),
            body: Center(
              child: Container(
                color: Colors.purple, // Center color
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.orange, // Column color
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.green, // SizedBox color
                            child: const SizedBox(height: 20),
                          ),
                          Container(
                            color: Colors.blue, // TextField color
                            padding: const EdgeInsets.all(8.0),
                            child: const TextField(
                              decoration: InputDecoration(labelText: 'TextField'),
                            ),
                          ),
                          Container(
                            color: Colors.green, // SizedBox color
                            child: const SizedBox(height: 20),
                          ),
                          Container(
                            color: Colors.blue, // ElevatedButton color
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: _toggleTheme,
                              child: const Text('Toggle Theme'),
                            ),
                          ),
                          Container(
                            color: Colors.green, // SizedBox color
                            child: const SizedBox(height: 20),
                          ),
                          Container(
                            color: Colors.blue, // Text color
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Current Theme: $_currentThemeName',
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
