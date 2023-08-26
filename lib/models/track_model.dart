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

  factory Track.fromJson(Map<String, dynamic> json) {
    return Track(
      id: json['id'],
      name: json['name'],
      artists: json['artists'],
      album: json['album'],
      duration: json['duration'],
      image: json['image'],
      url: json['url'],
    );
  }
}
