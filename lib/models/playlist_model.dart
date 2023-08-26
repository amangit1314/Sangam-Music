import 'track_model.dart';

class PlayList {
  final String id;
  final String name;
  final String description;
  final String? image;
  final bool isCreatedMyMe;
  final bool isFavourite;
  final int? likes;
  final String duration;
  final List<String> contributors;
  final List<Track> tracks;

  PlayList({
    required this.id,
    required this.name,
    required this.description,
    this.image,
    this.isCreatedMyMe = true,
    this.isFavourite = false,
    required this.likes,
    this.duration = '0min',
    this.contributors = const [],
    this.tracks = const [],
  });
}
