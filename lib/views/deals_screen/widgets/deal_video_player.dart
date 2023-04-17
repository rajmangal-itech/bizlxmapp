import 'package:flutter/material.dart';

class DealVideoPlayer extends StatefulWidget {
  const DealVideoPlayer({super.key});

  @override
  State<DealVideoPlayer> createState() => _DealVideoPlayerState();
}

class _DealVideoPlayerState extends State<DealVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: width,
        height: 245,
        color: Colors.red,
      ),
    );
  }
}
