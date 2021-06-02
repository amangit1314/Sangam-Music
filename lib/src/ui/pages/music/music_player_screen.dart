import 'package:flutter/material.dart';
import 'package:sangam/src/ui/pages/music/components/body.dart';

class MusicPlayer extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final String img;
  final String songUrl;
  final String artistName;
  final String duration;

  const MusicPlayer(
      {Key key,
      this.title,
      this.description,
      this.color,
      this.img,
      this.songUrl,
      this.artistName,
      this.duration})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MusicPlayerBody(),
    );
  }
}
