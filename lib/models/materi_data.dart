class Materi {
  final String title;
  final String description;
  final String publish;

  Materi({
    required this.title,
    required this.description,
    required this.publish,
  });
}

final List<Materi> hotels = [
  Materi(
    name: 'Hotel A',
    description:
        'Deskripsi Hotel A. Fasilitas lengkap dengan pemandangan indah.',
    imagePath: 'assets/images/hotel1.jpg',
  ),
  Materi(
    name: 'Hotel B',
    description:
        'Deskripsi Hotel B. Pengalaman menginap yang nyaman dan mewah.',
    imagePath: 'assets/images/hotel1.jpg',
  ),
  Materi(
    name: 'Hotel C',
    description:
        'Deskripsi Hotel B. Pengalaman menginap yang nyaman dan mewah.',
    imagePath: 'assets/images/hotel1.jpg',
  ),
  Materi(
    name: 'Hotel D',
    description:
        'Deskripsi Hotel B. Pengalaman menginap yang nyaman dan mewah.',
    imagePath: 'assets/images/hotel1.jpg',
  ),
  // Tambahkan hotel lainnya sesuai kebutuhan
];
