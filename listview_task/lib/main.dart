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
  List<String> nameArray = [
    'Flutter',
    'React Native',
    'Xamarin',
    'Ionic',
    'PhoneGap',
    'NativeScript',
    'Appcelerator',
    'Corona',
    'Sencha',
    'jQuery Mobile'
  ];
  List<String> descriptionArray = [
    'Beautiful UI Framework',
    'Build Mobile Apps with JavaScript',
    'Build Mobile Apps with C#',
    'Build Mobile Apps with JavaScript',
    'Build Mobile Apps with JavaScript',
    'Build Mobile Apps with JavaScript',
    'Build Mobile Apps with JavaScript',
    'Build Mobile Apps with Lua',
    'Build Mobile Apps with JavaScript',
    'Build Mobile Apps with JavaScript'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView( 
        children: [
          Column(
            children: [
              Container(
                height: 200,
                color: Colors.pink,
              ),
              SizedBox(height: 10),
            ],
          ),
          Column(
            children: [
              Container(
                height: 400,
                color: Colors.yellow,
                child: ListView.builder(
                  itemCount: nameArray.length,
                  itemBuilder: (context, index) {
                    return customCardWidget(
                        nameArray[index], descriptionArray[index]);
                  },
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
          Column(
            children: [
              Container(
                height: 200,
                color: Colors.red,
              ),
              SizedBox(height: 10),
            ],
          ),
        ],
      )
    );
  }
}

Widget customCardWidget(String title, String description) {
  return Card(
      elevation: 4,
      child: Container(
        height: 100,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://api.api-ninjas.com/v1/randomimage?category=nature'),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text(description)
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('GO'),
                )
              ],
            )
          ],
        ),
      ));
}
