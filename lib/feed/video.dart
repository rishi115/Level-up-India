import 'package:flutter/material.dart';
import 'package:levelupindia/widgets/Content_screen.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContentScreen(),
    );
  }
}
