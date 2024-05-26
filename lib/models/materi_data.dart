class Materi {
  final String title;
  final String description;
  final String kelas;
  final String publish;
  final String imagePath; // Add imagePath property

  Materi({
    required this.title,
    required this.description,
    required this.publish,
    required this.imagePath,
    required this.kelas, // Add imagePath to constructor parameters
  });
}

final List<Materi> hotels = [
  Materi(
      title: 'BAB1',
      description: 'Deskripsikan Materi BAB 1',
      imagePath: 'assets/images/hotelA.jpg',
      publish: '18/4/2024',
      kelas: '10' // Replace with unique image paths
      ),
  Materi(
      title: 'BAB2',
      description: 'Deskripsi BAB 2',
      imagePath: 'assets/images/hotelB.jpg',
      publish: '18/4/2024',
      kelas: '11' // Replace with unique image paths
      ),
  Materi(
      title: 'BAB3',
      description: 'Deskripsikan Materi Bab 3.',
      imagePath: 'assets/images/hotelC.jpg',
      publish: '18/4/2024',
      kelas: '12' // Replace with unique image paths
      ),
  Materi(
      title: 'BAB 4',
      description: 'Deskripsi Materi Bab 4',
      imagePath: 'assets/images/hotelD.jpg',
      publish: '18/4/2024',
      kelas: '11' // Replace with unique image paths
      ),
  Materi(
      title: 'BAB 4',
      description: 'Deskripsi Materi Bab 4',
      imagePath: 'assets/images/hotelD.jpg',
      publish: '18/4/2024',
      kelas: '11' // Replace with unique image paths
      ),
  Materi(
      title: 'BAB 4',
      description: 'Deskripsi Materi Bab 4',
      imagePath: 'assets/images/hotelD.jpg',
      publish: '18/4/2024',
      kelas: '11' // Replace with unique image paths
      ),

  // Tambahkan hotel lainnya sesuai kebutuhan
];
