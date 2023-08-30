import 'dart:convert';

import 'track_model.dart';

class PlayList {
  final String id;
  final String name;
  final String? image;
  final String duration;
  final String description;

  final bool isCreatedByMe;
  final bool isFavourite;

  final int? likes;

  final List<Track> tracks;
  final List<String> contributors;

  PlayList({
    required this.id,
    required this.name,
    required this.description,
    this.image,
    this.isCreatedByMe = true,
    this.isFavourite = false,
    required this.likes,
    this.duration = '0min',
    this.contributors = const [],
    this.tracks = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'isCreatedByMe': isCreatedByMe,
      'isFavourite': isFavourite,
      'likes': likes,
      'duration': duration,
      'contributors': contributors,
      'tracks': tracks.map((x) => x.toMap()).toList(),
    };
  }

  factory PlayList.fromMap(Map<String, dynamic> map) {
    return PlayList(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      image: map['image'],
      isCreatedByMe: map['isCreatedByMe'] ?? false,
      isFavourite: map['isFavourite'] ?? false,
      likes: map['likes']?.toInt(),
      duration: map['duration'] ?? '',
      contributors: List<String>.from(map['contributors']),
      tracks: List<Track>.from(map['tracks']?.map((x) => Track.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PlayList.fromJson(String source) =>
      PlayList.fromMap(json.decode(source));
}
