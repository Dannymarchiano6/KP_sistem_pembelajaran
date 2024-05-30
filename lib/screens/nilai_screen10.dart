import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Check Nilai Siswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CheckNilaiScreen(),
    );
  }
}

class CheckNilaiScreen extends StatefulWidget {
  @override
  _CheckNilaiScreenState createState() => _CheckNilaiScreenState();
}

class _CheckNilaiScreenState extends State<CheckNilaiScreen> {
  List<Map<String, dynamic>> nilaiSiswa = [
    {'nama': 'Siswa A', 'nilai': 80},
    {'nama': 'Siswa B', 'nilai': 75},
    {'nama': 'Siswa C', 'nilai': 90},
    {'nama': 'Siswa D', 'nilai': 85},
    {'nama': 'Siswa E', 'nilai': 95},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Nilai Siswa'),
      ),
      body: ListView.builder(
        itemCount: nilaiSiswa.length,
        itemBuilder: (context, index) {
          final siswa = nilaiSiswa[index];
          return ListTile(
            title: Text(siswa['nama']),
            subtitle: Text('Nilai: ${siswa['nilai']}'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigasi ke layar detail nilai
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailNilaiScreen(siswa: siswa),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailNilaiScreen extends StatelessWidget {
  final Map<String, dynamic> siswa;

  DetailNilaiScreen({required this.siswa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Nilai'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Nama Siswa: ${siswa['nama']}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Nilai: ${siswa['nilai']}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
