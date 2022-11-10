class Images {
  Images({
    required this.background,
    required this.coverart,
    required this.coverarthq,
    required this.joecolor,
  });

  String background;
  String coverart;
  String coverarthq;
  String joecolor;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        background: json["background"],
        coverart: json["coverart"],
        coverarthq: json["coverarthq"],
        joecolor: json["joecolor"],
      );

  Map<String, dynamic> toJson() => {
        "background": background,
        "coverart": coverart,
        "coverarthq": coverarthq,
        "joecolor": joecolor,
      };
}
