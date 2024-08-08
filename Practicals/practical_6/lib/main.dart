// Name: Yasvi Chokhawala
// Enrolment No.: 202203103510350
// Branch: B.Tech Computer Science and Engineering 
// Practical-6: Develop a flutter app with following functionalities: Display list of currently running semester-division name of your college using Listview.separated( ). On tap of semester-division, display list of students studying in that class using Listview.builder( ).

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SemesterList(),
    );
  }
}

class SemesterList extends StatelessWidget {
  final List<String> semesters = [
    'Semester 5 - Division A',
    'Semester 5 - Division B',
    'Semester 5 - Division C',
    'Semester 5 - Division D',
  ];

  final Map<String, List<String>> students = {
    'Semester 5 - Division A': ['Manas Patil', 'Jitendra Suthar', 'Mihika Lad'],
    'Semester 5 - Division B': ['Dhruvi Patel', 'Parin Shah', 'Priyal Javia'],
    'Semester 5 - Division C': ['Yasvi Chokhawala', 'Yash Prajapati', 'Harshil Tamboli'],
    'Semester 5 - Division D': ['Rohit Mahadik', 'Pinkesh Patel', 'Meet Patel'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classwise Student\'s List'),
      ),
      body: Stack(
        children: [
          ListView.separated(
            itemCount: semesters.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(semesters[index]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentList(
                        semester: semesters[index],
                        students: students[semesters[index]]!,
                      ),
                    ),
                  );
                },
              );
            },
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Text(
              'Practical 6 by En. No.: 202203103510350',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class StudentList extends StatelessWidget {
  final String semester;
  final List<String> students;

  StudentList({required this.semester, required this.students});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(semester),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(students[index]),
              );
            },
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Text(
              'Practical 6 by En. No.: 202203103510268',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
