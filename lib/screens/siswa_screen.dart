import 'package:flutter/material.dart';
import 'package:sistem_pembelajaran/screens/nilai_screen11.dart';
import 'package:sistem_pembelajaran/screens/nilai_screen12.dart';
import 'package:sistem_pembelajaran/screens/siswa_screen10.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nilai',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SiswaScreen(),
    );
  }
}

class SiswaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Siswa10Screen(),
                ),
              );
            },
            child: ClassroomCard(
              title: 'KELAS - X',
              subtitle:
                  'Teknologi Informasi dan Informatika\n Taufik Rahman S.T',
              backgroundColor: Colors.purple,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckNilaiScreen11(),
                ),
              );
            },
            child: ClassroomCard(
              title: 'KELAS - XI',
              subtitle:
                  'Teknologi Informasi dan Informatika\n Taufik Rahman S.T',
              backgroundColor: Colors.purple,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckNilaiScreen12(),
                ),
              );
            },
            child: ClassroomCard(
              title: 'KELAS - XII',
              subtitle:
                  'Teknologi Informasi dan Informatika\n Taufik Rahman S.T',
              backgroundColor: Colors.purple,
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