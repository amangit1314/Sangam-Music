class Artist {
  Artist({
    required this.alias,
    required this.id,
    required this.adamid,
  });

  String alias;
  String id;
  String adamid;

  factory Artist.fromJson(Map<String, dynamic> json) => Artist(
        alias: json["alias"],
        id: json["id"],
        adamid: json["adamid"],
      );

  Map<String, dynamic> toJson() => {
        "alias": alias,
        "id": id,
        "adamid": adamid,
      };
}
