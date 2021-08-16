import 'package:flutter/material.dart';
import 'package:sangam/ui/pages/music/components/body.dart';

class MusicPlayer extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final String img;
  final String songUrl;
  final String artistName;
  final String duration;

  const MusicPlayer(
      {Key? key,
      required this.title,
      required this.description,
      required this.color,
      required this.img,
      required this.songUrl,
      required this.artistName,
      required this.duration})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MusicPlayerBody(),
    );
  }
}
