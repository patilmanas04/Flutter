// Name: Yasvi Chokhawala
// Enrolment No.: 202203103510350
// Branch: B.Tech Computer Science and Engineering 
// Practical-7: Develop a flutter app to display images of images of at least 10 products using GridView.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewExample(),
    );
  }
}

class GridViewExample extends StatelessWidget {
  final List<String> productImages = [
    'lib/assets/Tanjiro.webp',
    'lib/assets/Gyomei.webp',
    'lib/assets/Kyojuro.webp',
    'lib/assets/Mitsuri.webp',
    'lib/assets/Muichiro.webp',
    'lib/assets/Obanai.webp',
    'lib/assets/Sanemi.webp',
    'lib/assets/giyu.webp',
    'lib/assets/Shinobu.webp',
    'lib/assets/Tengen.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demon Slayer Corps\nMember Poster'),
      ),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 2,
            ),
            itemCount: productImages.length,
            itemBuilder: (context, index) {
              return Card(
                child: Image.asset(
                  productImages[index],
                  fit: BoxFit.fitHeight,
                ),
              );
            },
          ),
          const Positioned(
            bottom: 10,
            right: 10,
            child: Text(
              'Practical 7 by En. No.: 202203103510350',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
