// Name: Parin Shah
// Enrollment Number: 202203103510105
// Branch: B. Tech. Computer Science and Engineering
// Practical 5: Develop a flutter app with custom widget to display your Enrollment number, Name, and Photo. Your image should be display in circular shape. Also display your hobbies with chip widgets.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final String enrollmentNumber = '202203103510105';
  final String name = 'Parin Shah';
  final String imagePath = 'images/profile.jpg';
  final List<String> hobbies = [
    'Coding',
    'Badminton',
    'Cricket',
    'Video Games',
    'Movies'
  ];

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: customProfileCard(enrollmentNumber, name, imagePath, hobbies),
      )
    );
  }
}

Widget customProfileCard(String enrollmentNumber, String name, String imagePath, List<String> hobbies) {
  return Container(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Enrollment Number: $enrollmentNumber',
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        Text(
          'Name: $name',
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 20),
        const Text(
          'Hobbies:',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10,
          children: hobbies.map((hobby) => Chip(
              label: Text(hobby),
            )
          ).toList(),
        ),
      ],
    ),
  );
}
