import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Absensi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AbsensiScreen10(),
    );
  }
}

class AbsensiScreen10 extends StatefulWidget {
  @override
  _AbsensiScreenState createState() => _AbsensiScreenState();
}

class _AbsensiScreenState extends State<AbsensiScreen10> {
  String? selectedNIS;
  String? selectedName;
  String? selectedClass;
  String? selectedAttendanceStatus;

  final List<String> nisList = ['12345', '67890', '11223'];
  final List<String> nameList = ['John Doe', 'Jane Smith', 'Robert Brown'];
  final List<String> classList = ['Class 10', 'Class 11', 'Class 12'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absensi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: selectedNIS,
              hint: Text('NIS'),
              items: nisList.map((nis) {
                return DropdownMenuItem(
                  value: nis,
                  child: Text(nis),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedNIS = value;
                });
              },
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: selectedName,
              hint: Text('Nama'),
              items: nameList.map((name) {
                return DropdownMenuItem(
                  value: name,
                  child: Text(name),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedName = value;
                });
              },
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: selectedClass,
              hint: Text('Kelas'),
              items: classList.map((kelas) {
                return DropdownMenuItem(
                  value: kelas,
                  child: Text(kelas),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedClass = value;
                });
              },
            ),
            SizedBox(height: 32),
            Column(
              children: [
                RadioListTile<String>(
                  title: Text('Hadir'),
                  value: 'Hadir',
                  groupValue: selectedAttendanceStatus,
                  onChanged: (value) {
                    setState(() {
                      selectedAttendanceStatus = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: Text('Tidak Hadir'),
                  value: 'Tidak Hadir',
                  groupValue: selectedAttendanceStatus,
                  onChanged: (value) {
                    setState(() {
                      selectedAttendanceStatus = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: Text('Izin'),
                  value: 'Izin',
                  groupValue: selectedAttendanceStatus,
                  onChanged: (value) {
                    setState(() {
                      selectedAttendanceStatus = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: Text('Sakit'),
                  value: 'Sakit',
                  groupValue: selectedAttendanceStatus,
                  onChanged: (value) {
                    setState(() {
                      selectedAttendanceStatus = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Handle save logic here
                print('NIS: $selectedNIS');
                print('Nama: $selectedName');
                print('Kelas: $selectedClass');
                print('Status: $selectedAttendanceStatus');
              },
              child: Text('Simpan'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.purple,
      ),
    );
  }
}
