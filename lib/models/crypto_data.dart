import 'image.dart';
import 'localization.dart';
import 'markey_data.dart';

class CryptoData {
  CryptoData({
    required this.id,
    required this.symbol,
    required this.name,
    required this.blockTimeInMinutes,
    required this.image,
    required this.marketData,
    required this.lastUpdated,
    required this.localization,
  });

  final String? id;
  final String? symbol;
  final String? name;
  final String? blockTimeInMinutes;
  final Image? image;
  final MarketData? marketData;
  final DateTime? lastUpdated;
  final Localization? localization;

  factory CryptoData.fromJson(Map<String, dynamic> json) {
    return CryptoData(
      id: json["id"],
      symbol: json["symbol"],
      name: json["name"],
      blockTimeInMinutes: json["block_time_in_minutes"],
      image: json["image"] == null ? null : Image.fromJson(json["image"]),
      marketData: json["market_data"] == null
          ? null
          : MarketData.fromJson(json["market_data"]),
      lastUpdated: DateTime.tryParse(json["last_updated"] ?? ""),
      localization: json["localization"] == null
          ? null
          : Localization.fromJson(json["localization"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "name": name,
        "block_time_in_minutes": blockTimeInMinutes,
        "image": image?.toJson(),
        "market_data": marketData?.toJson(),
        "last_updated": lastUpdated?.toIso8601String(),
        "localization": localization?.toJson(),
      };
}
