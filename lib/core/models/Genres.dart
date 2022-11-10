class Genres {
  Genres({
    required this.primary,
  });

  String primary;

  factory Genres.fromJson(Map<String, dynamic> json) => Genres(
        primary: json["primary"],
      );

  Map<String, dynamic> toJson() => {
        "primary": primary,
      };
}
