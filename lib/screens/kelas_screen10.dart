import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Check Kelas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StudentListScreen10(),
    );
  }
}

class StudentListScreen10 extends StatelessWidget {
  final List<Map<String, String>> students = [
    {"nis": "123", "name": "Alice", "class": "10A"},
    {"nis": "456", "name": "Bob", "class": "10B"},
    {"nis": "789", "name": "Charlie", "class": "10C"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Kelas'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(students[index]['nis']!),
              ),
              title: Text(students[index]['name']!),
              subtitle: Text('Kelas: ${students[index]['class']}'),
            ),
          );
        },
      ),
    );
  }
}
