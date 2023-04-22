class Image {
  Image({
    required this.thumb,
    required this.small,
    required this.large,
  });

  final String? thumb;
  final String? small;
  final String? large;

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
      thumb: json["thumb"],
      small: json["small"],
      large: json["large"],
    );
  }

  Map<String, dynamic> toJson() => {
        "thumb": thumb,
        "small": small,
        "large": large,
      };
}
