import 'package:flutter/material.dart';

void main() {
  runApp(AbsensiApp());
}

class AbsensiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AbsensiScreen12(),
    );
  }
}

class AbsensiScreen12 extends StatefulWidget {
  @override
  _AbsensiScreenState createState() => _AbsensiScreenState();
}

class _AbsensiScreenState extends State<AbsensiScreen12> {
  final TextEditingController nisController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController kelasController = TextEditingController();
  String? selectedStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absensi menu'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Silahkan Absensi terlebih dahulu',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            TextField(
              controller: nisController,
              decoration: InputDecoration(
                labelText: 'NIS',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: namaController,
              decoration: InputDecoration(
                labelText: 'Nama',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Status Kehadiran',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              value: selectedStatus,
              items: [
                DropdownMenuItem(
                  value: 'Hadir',
                  child: Text('Hadir'),
                ),
                DropdownMenuItem(
                  value: 'Tidak Hadir',
                  child: Text('Tidak Hadir'),
                ),
                DropdownMenuItem(
                  value: 'Izin',
                  child: Text('Izin'),
                ),
                DropdownMenuItem(
                  value: 'Sakit',
                  child: Text('Sakit'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedStatus = value;
                });
              },
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle save button press
                  // You can access the values using the controllers and selectedStatus variable
                  String nis = nisController.text;
                  String nama = namaController.text;
                  String kelas = kelasController.text;
                  String? status = selectedStatus;

                  // Add your save logic here
                },
                child: Text('Simpan'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  backgroundColor: Color.fromARGB(255, 244, 246, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
