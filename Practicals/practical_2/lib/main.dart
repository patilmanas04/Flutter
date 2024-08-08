// Name: Parin Shah
// Enrollment Number: 202203103510105
// Branch: B. Tech. Computer Science and Engineering
// Practical 2: Design a flutter screen with following widgets as per given hierarchy: Design two attractive themes “EmeraldTheme” and “RubyTheme”. Apply any one theme initially and display that theme name in Text widget. On tap of the ElevatedButton, apply other than the currently applied theme and display that theme name in Text widget.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: emeraldTheme,
      home: const ThemeSwitcher(),
    );
  }
}

final emeraldTheme = ThemeData(
  primarySwatch: Colors.green,
  brightness: Brightness.light,
);

final rubyTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  _ThemeSwitcherState createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  bool isEmerald = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isEmerald ? emeraldTheme : rubyTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Theme Changer'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20, child: Text("Theme Changer"),),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isEmerald = !isEmerald;
                  });
                },
                child: const Text('Change Theme'),
              ),
              const SizedBox(height: 20),
              Text(isEmerald ? "EmeraldTheme" : "RubyTheme"),
            ],
          ),
        )
      ),
    );
  }
}
