import 'dart:convert';

class Track {
  final String id;
  final String name;
  final List<String> artists;
  final String album;
  final String duration;
  final String image;
  final String url;
  final bool isFavourite, isPopular;

  Track({
    required this.id,
    required this.name,
    required this.artists,
    required this.album,
    required this.duration,
    required this.image,
    required this.url,
    this.isFavourite = false,
    this.isPopular = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'artists': artists,
      'album': album,
      'duration': duration,
      'image': image,
      'url': url,
      'isPopular': isPopular,
    };
  }

  factory Track.fromMap(Map<String, dynamic> map) {
    return Track(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      artists: List<String>.from(map['artists']),
      album: map['album'] ?? '',
      duration: map['duration'] ?? '',
      image: map['image'] ?? '',
      url: map['url'] ?? '',
      isPopular: map['isPopular'] ?? false,
      isFavourite: map['isFavourite'] ?? false,
    );
  }

  factory Track.fromJson(Map<String, dynamic> json) {
    return Track(
      id: json['id'],
      name: json['name'],
      artists: json['artists'],
      album: json['album'],
      duration: json['duration'],
      image: json['image'],
      url: json['url'],
      isFavourite: json['isFavourite'],
      isPopular: json['isPopular'],
    );
  }

  String toJson() => json.encode(toMap());
}
