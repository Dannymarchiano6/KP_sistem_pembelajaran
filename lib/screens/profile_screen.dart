// import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';

// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final TextEditingController nisController = TextEditingController();
//   final TextEditingController usernameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController kelasController = TextEditingController();
//   final TextEditingController alamatController = TextEditingController();
//   final TextEditingController tanggalLahirController = TextEditingController();

//   void saveProfile() async {
//     String nis = nisController.text;
//     String username = usernameController.text;
//     String email = emailController.text;
//     String kelas = kelasController.text;
//     String alamat = alamatController.text;
//     String tanggalLahir = tanggalLahirController.text;

//     // Add data to Firestore
//     // await FirebaseFirestore.instance.collection('profiles').add({
//     //   'nis': nis,
//     //   'username': username,
//     //   'email': email,
//     //   'kelas': kelas,
//     //   'alamat': alamat,
//     //   'tanggalLahir': tanggalLahir,
//     // });

//     // Show a success message
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Profile saved successfully!')),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profil'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             // Handle back button press
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: nisController,
//               decoration: InputDecoration(
//                 labelText: 'NIS',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: usernameController,
//               decoration: InputDecoration(
//                 labelText: 'Username',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: kelasController,
//               decoration: InputDecoration(
//                 labelText: 'Kelas',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: alamatController,
//               decoration: InputDecoration(
//                 labelText: 'Alamat',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: tanggalLahirController,
//               decoration: InputDecoration(
//                 labelText: 'Tanggal Lahir',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: saveProfile,
//               child: Text('Simpan'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.purple, // Background color
//               ),
//             ),
//             SizedBox(height: 10),
//             TextButton(
//               onPressed: () {
//                 // Handle change profile button press
//               },
//               child: Text('Ubah Profil'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
