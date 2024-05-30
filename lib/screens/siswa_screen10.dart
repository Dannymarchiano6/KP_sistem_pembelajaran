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
      home: Siswa10Screen(),
    );
  }
}

class Siswa10Screen extends StatefulWidget {
  @override
  _CheckNilaiScreenState createState() => _CheckNilaiScreenState();
}

class _CheckNilaiScreenState extends State<Siswa10Screen> {
  List<Map<String, dynamic>> nilaiSiswa = [
    {'nama': 'Adrian', 'status': 'Sakit'},
    {'nama': 'Danny', 'status': 'Masuk'},
    {'nama': 'Adrian', 'status': 'Tidak Masuk'},
    {'nama': 'Danny', 'status': 'Izin Sakit'},
    {'nama': 'Adrian', 'status': 'idak Masuk'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Status Siswa'),
      ),
      body: ListView.builder(
        itemCount: nilaiSiswa.length,
        itemBuilder: (context, index) {
          final siswa = nilaiSiswa[index];
          return ListTile(
            title: Text(siswa['nama']),
            subtitle: Text('Status: ${siswa['status']}'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigasi ke layar detail nilai
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailSiswaScreen(siswa: siswa),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailSiswaScreen extends StatelessWidget {
  final Map<String, dynamic> siswa;

  DetailSiswaScreen({required this.siswa});

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
              'Status: ${siswa['status']}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
