import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  List VideoList = [
    'Bab 1 Tentang Informatika',
    'A. Tujuan Pembelajaran',
    'Apa itu Teknologi Informasi Infomatika',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: VideoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0xFF674AEF)
                  : Color(0xFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(VideoList[index]),
          subtitle: Text("20:00"),
        );
      },
    );
  }
}
