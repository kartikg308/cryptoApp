class Roi {
  Roi({
    required this.times,
    required this.currency,
    required this.percentage,
  });

  final double? times;
  final String? currency;
  final double? percentage;

  factory Roi.fromJson(Map<String, dynamic> json) {
    return Roi(
      times: json["times"],
      currency: json["currency"],
      percentage: json["percentage"],
    );
  }

  Map<String, dynamic> toJson() => {
        "times": times,
        "currency": currency,
        "percentage": percentage,
      };
}
