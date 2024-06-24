import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoSection extends StatefulWidget {
  @override
  _VideoSectionState createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  List<String> videoList = [
    'Bab 1 Tentang Informatika',
    'A. Tujuan Pembelajaran',
    'Apa itu Teknologi Informasi Infomatika',
  ];

  // You would typically have URLs or paths to the videos here
  List<String> videoUrls = [
    'https://www.example.com/video1.mp4',
    'https://www.example.com/video2.mp4',
    'https://www.example.com/video3.mp4',
  ];

  VideoPlayerController? _controller;
  int _currentPlayingIndex = -1;

  void _playVideo(String url, int index) {
    if (_controller != null) {
      _controller!.dispose();
    }

    _controller = VideoPlayerController.network(url)
      ..initialize().then((_) {
        setState(() {
          _currentPlayingIndex = index;
          _controller!.play();
        });
      });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: videoList.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              leading: GestureDetector(
                onTap: () {
                  _playVideo(videoUrls[index], index);
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: index == _currentPlayingIndex
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
              ),
              title: Text(videoList[index]),
              subtitle: Text("20:00"),
            );
          },
        ),
        if (_controller != null && _controller!.value.isInitialized)
          AspectRatio(
            aspectRatio: _controller!.value.aspectRatio,
            child: VideoPlayer(_controller!),
          ),
      ],
    );
  }
}
