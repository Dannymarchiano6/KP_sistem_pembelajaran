// import 'package:education_app_ui/Screens/materi_kelas10bab1.dart';
// import 'package:education_app_ui/Screens/materi_kelas10bab2.dart';
// import 'package:education_app_ui/Screens/materi_kelas10bab3.dart';
// import 'package:education_app_ui/Screens/materi_kelas10bab4.dart';
// import 'package:education_app_ui/Screens/materi_kelas10bab5.dart';
// import 'package:education_app_ui/Screens/materi_kelas10bab6.dart';
// import 'package:education_app_ui/Screens/materi_kelas10bab7.dart';
// import 'package:education_app_ui/Screens/materi_kelas10bab8.dart';
// import 'package:education_app_ui/Screens/materi_kelas10bab9.dart';
import 'package:education_app_ui/Screens_Murid/materi_kelas10bab1.dart';
import 'package:education_app_ui/Screens_Murid/materi_kelas10bab2.dart';
import 'package:education_app_ui/Screens_Murid/materi_kelas10bab3.dart';
import 'package:education_app_ui/Screens_Murid/materi_kelas10bab4.dart';
import 'package:education_app_ui/Screens_Murid/materi_kelas10bab5.dart';
import 'package:education_app_ui/Screens_Murid/materi_kelas10bab6.dart';
import 'package:education_app_ui/Screens_Murid/materi_kelas10bab7.dart';
import 'package:education_app_ui/Screens_Murid/materi_kelas10bab8.dart';
import 'package:education_app_ui/Screens_Murid/materi_kelas10bab9.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
      home: kelas10(),
    );
  }
}

class kelas10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materi'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseScreenkelas10bab1('BAB 1'),
                ),
              );
            },
            child: ClassroomCard(
              title: 'Bab 1',
              subtitle: 'Informatika dan ketrampilan Genetika',
              backgroundColor: Colors.grey,
              progress: 0.2,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseScreenkelas10bab2('BAB 2'),
                ),
              );
            },
            child: ClassroomCard(
              title: 'Bab II',
              subtitle: 'Berpikir Komputasional',
              backgroundColor: Colors.grey,
              progress: 0.4,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseScreenbab3kelas10('BAB 3'),
                ),
              );
            },
          ),
          ClassroomCard(
            title: 'Bab III',
            subtitle: 'Teknologi Informasi dan Komunikasi',
            backgroundColor: Colors.grey,
            progress: 0.6,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseScreenbab4kelas10('BAB 4'),
                ),
              );
            },
          ),
          ClassroomCard(
            title: 'Bab IV',
            subtitle: 'Sistem Komputer',
            backgroundColor: Colors.grey,
            progress: 0.8,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseScreenbab5kelas10('BAB 5'),
                ),
              );
            },
          ),
          ClassroomCard(
            title: 'Bab V',
            subtitle: 'Dasar Jaringan Komputer',
            backgroundColor: Colors.grey,
            progress: 0.1,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseScreenbab6kelas10('BAB 6'),
                ),
              );
            },
          ),
          ClassroomCard(
            title: 'Bab VI',
            subtitle: 'Analisis Data',
            backgroundColor: Colors.grey,
            progress: 0.3,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseScreenbab7kelas10('BAB 7'),
                ),
              );
            },
          ),
          ClassroomCard(
            title: 'Bab VII',
            subtitle: 'Algoritma dan Pemrograman',
            backgroundColor: Colors.grey,
            progress: 0.5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseScreenbab8kelas10('BAB 8'),
                ),
              );
            },
          ),
          ClassroomCard(
            title: 'Bab VIII',
            subtitle: 'Dampak Sosial dan Informatika',
            backgroundColor: Colors.grey,
            progress: 0.7,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseScreenbab9kelas10('BAB 9'),
                ),
              );
            },
          ),
          ClassroomCard(
            title: 'Bab IX',
            subtitle: 'Praktika Lintas bidang Informatika',
            backgroundColor: Colors.grey,
            progress: 0.9,
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
  final double progress;

  ClassroomCard({
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircularPercentIndicator(
              radius: 40.0,
              lineWidth: 8.0,
              percent: progress,
              center: new Text("${(progress * 100).toInt()}%"),
              progressColor: Colors.blue,
              backgroundColor: Colors.white,
            ),
            SizedBox(width: 16),
            Column(
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
          ],
        ),
      ),
    );
  }
}
