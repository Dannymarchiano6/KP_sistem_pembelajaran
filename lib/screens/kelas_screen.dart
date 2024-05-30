import 'package:flutter/material.dart';
import 'package:sistem_pembelajaran/screens/kelas_screen10.dart';
import 'package:sistem_pembelajaran/screens/materi_kelas11.dart';
import 'package:sistem_pembelajaran/screens/materi_kelas12.dart';

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
      home: CheckKelas(),
    );
  }
}

class CheckKelas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kelas'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentListScreen10(),
                ),
              );
            },
            child: ClassroomCard(
              title: 'KELAS - X',
              subtitle:
                  'Teknologi Informasi dan Informatika\nTaufik Rahman S.T',
              backgroundColor: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Materikelas11(),
                ),
              );
            },
            child: ClassroomCard(
              title: 'KELAS - XI',
              subtitle:
                  'Teknologi Informasi dan Informatika\nTaufik Rahman S.T',
              backgroundColor: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Materikelas12(),
                ),
              );
            },
            child: ClassroomCard(
              title: 'KELAS - XII',
              subtitle:
                  'Teknologi Informasi dan Informatika\nTaufik Rahman S.T',
              backgroundColor: Colors.grey,
            ),
          ),
        ],
      ),
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
