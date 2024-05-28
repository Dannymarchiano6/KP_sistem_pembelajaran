import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Materikelas11(),
    );
  }
}

class Materikelas11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materi Kelas XI'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ClassroomCard(
            title: 'Bab 1',
            subtitle: 'Tentang Informatika',
            backgroundColor: Colors.grey,
          ),
          ClassroomCard(
            title: 'Bab II',
            subtitle: 'Strategi Algoritmik',
            backgroundColor: Colors.grey,
          ),
          ClassroomCard(
            title: 'Bab III',
            subtitle: 'Berpikir Kritis dan Dampak Sosial dan Informatika',
            backgroundColor: Colors.grey,
          ),
          ClassroomCard(
            title: 'Bab IV',
            subtitle: 'Jaringan Komputer',
            backgroundColor: Colors.grey,
          ),
          ClassroomCard(
            title: 'Bab V',
            subtitle: 'Pengembangan Aplikasi library Kecerdasan Artifisial',
            backgroundColor: Colors.grey,
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Add your onPressed code here!
      //   },
      //   child: Icon(Icons.add),
      //   backgroundColor: Colors.blue,
      // ),
    );
  }
}

class ClassroomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color backgroundColor;

  ClassroomCard({
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
