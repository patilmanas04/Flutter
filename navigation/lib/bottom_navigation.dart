import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    const String enrollmentNumber = '202203103510105';
    const String name = 'Parin Shah';
    const String imagePath = 'images/profile.jpg';
    final List<String> hobbies = [
      'Coding',
      'Badminton',
      'Cricket',
      'Video Games',
      'Movies'
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile Page'),
        ),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(imagePath),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Enrollment Number: $enrollmentNumber',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              const Text(
                'Name: $name',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              const Text(
                'Hobbies:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                children: hobbies
                    .map((hobby) => Chip(
                          label: Text(hobby),
                        ))
                    .toList(),
              ),
            ],
          ),
        )
      )
    );
  }
}
