import 'roi.dart';

class MarketData {
  MarketData({
    required this.currentPrice,
    required this.roi,
    required this.marketCap,
    required this.marketCapRank,
    required this.totalVolume,
    required this.high24H,
    required this.low24H,
    required this.priceChange24H,
    required this.priceChangePercentage24H,
    required this.priceChangePercentage7D,
    required this.priceChangePercentage14D,
    required this.priceChangePercentage30D,
    required this.priceChangePercentage60D,
    required this.priceChangePercentage200D,
    required this.priceChangePercentage1Y,
    required this.marketCapChange24H,
    required this.marketCapChangePercentage24H,
    required this.priceChange24HInCurrency,
    required this.priceChangePercentage1HInCurrency,
    required this.priceChangePercentage24HInCurrency,
    required this.priceChangePercentage7DInCurrency,
    required this.priceChangePercentage14DInCurrency,
    required this.priceChangePercentage30DInCurrency,
    required this.priceChangePercentage60DInCurrency,
    required this.priceChangePercentage200DInCurrency,
    required this.priceChangePercentage1YInCurrency,
    required this.marketCapChange24HInCurrency,
    required this.marketCapChangePercentage24HInCurrency,
    required this.totalSupply,
    required this.circulatingSupply,
  });

  final Map<String, dynamic> currentPrice;
  final Roi? roi;
  final Map<String, dynamic> marketCap;
  final int? marketCapRank;
  final Map<String, dynamic> totalVolume;
  final Map<String, dynamic> high24H;
  final Map<String, dynamic> low24H;
  final dynamic priceChange24H;
  final dynamic priceChangePercentage24H;
  final dynamic priceChangePercentage7D;
  final dynamic priceChangePercentage14D;
  final dynamic priceChangePercentage30D;
  final dynamic priceChangePercentage60D;
  final dynamic priceChangePercentage200D;
  final dynamic priceChangePercentage1Y;
  final dynamic marketCapChange24H;
  final dynamic marketCapChangePercentage24H;
  final Map<String, dynamic> priceChange24HInCurrency;
  final Map<String, dynamic> priceChangePercentage1HInCurrency;
  final Map<String, dynamic> priceChangePercentage24HInCurrency;
  final Map<String, dynamic> priceChangePercentage7DInCurrency;
  final Map<String, dynamic> priceChangePercentage14DInCurrency;
  final Map<String, dynamic> priceChangePercentage30DInCurrency;
  final Map<String, dynamic> priceChangePercentage60DInCurrency;
  final Map<String, dynamic> priceChangePercentage200DInCurrency;
  final Map<String, dynamic> priceChangePercentage1YInCurrency;
  final Map<String, dynamic> marketCapChange24HInCurrency;
  final Map<String, dynamic> marketCapChangePercentage24HInCurrency;
  final String? totalSupply;
  final String? circulatingSupply;

  factory MarketData.fromJson(Map<String, dynamic> json) {
    return MarketData(
      currentPrice: Map.from(json["current_price"])
          .map((k, v) => MapEntry<String, dynamic>(k, v)),
      roi: json["roi"] == null ? null : Roi.fromJson(json["roi"]),
      marketCap: Map.from(json["market_cap"])
          .map((k, v) => MapEntry<String, dynamic>(k, v)),
      marketCapRank: json["market_cap_rank"],
      totalVolume: Map.from(json["total_volume"])
          .map((k, v) => MapEntry<String, dynamic>(k, v)),
      high24H: Map.from(json["high_24h"])
          .map((k, v) => MapEntry<String, dynamic>(k, v)),
      low24H: Map.from(json["low_24h"])
          .map((k, v) => MapEntry<String, dynamic>(k, v)),
      priceChange24H: json["price_change_24h"],
      priceChangePercentage24H: json["price_change_percentage_24h"],
      priceChangePercentage7D: json["price_change_percentage_7d"],
      priceChangePercentage14D: json["price_change_percentage_14d"],
      priceChangePercentage30D: json["price_change_percentage_30d"],
      priceChangePercentage60D: json["price_change_percentage_60d"],
      priceChangePercentage200D: json["price_change_percentage_200d"],
      priceChangePercentage1Y: json["price_change_percentage_1y"],
      marketCapChange24H: json["market_cap_change_24h"],
      marketCapChangePercentage24H: json["market_cap_change_percentage_24h"],
      priceChange24HInCurrency: Map.from(json["price_change_24h_in_currency"])
          .map((k, v) => MapEntry<String, dynamic>(k, v)),
      priceChangePercentage1HInCurrency:
          Map.from(json["price_change_percentage_1h_in_currency"])
              .map((k, v) => MapEntry<String, dynamic>(k, v)),
      priceChangePercentage24HInCurrency:
          Map.from(json["price_change_percentage_24h_in_currency"])
              .map((k, v) => MapEntry<String, dynamic>(k, v)),
      priceChangePercentage7DInCurrency:
          Map.from(json["price_change_percentage_7d_in_currency"])
              .map((k, v) => MapEntry<String, dynamic>(k, v)),
      priceChangePercentage14DInCurrency:
          Map.from(json["price_change_percentage_14d_in_currency"])
              .map((k, v) => MapEntry<String, dynamic>(k, v)),
      priceChangePercentage30DInCurrency:
          Map.from(json["price_change_percentage_30d_in_currency"])
              .map((k, v) => MapEntry<String, dynamic>(k, v)),
      priceChangePercentage60DInCurrency:
          Map.from(json["price_change_percentage_60d_in_currency"])
              .map((k, v) => MapEntry<String, dynamic>(k, v)),
      priceChangePercentage200DInCurrency:
          Map.from(json["price_change_percentage_200d_in_currency"])
              .map((k, v) => MapEntry<String, dynamic>(k, v)),
      priceChangePercentage1YInCurrency:
          Map.from(json["price_change_percentage_1y_in_currency"])
              .map((k, v) => MapEntry<String, dynamic>(k, v)),
      marketCapChange24HInCurrency:
          Map.from(json["market_cap_change_24h_in_currency"])
              .map((k, v) => MapEntry<String, dynamic>(k, v)),
      marketCapChangePercentage24HInCurrency:
          Map.from(json["market_cap_change_percentage_24h_in_currency"])
              .map((k, v) => MapEntry<String, dynamic>(k, v)),
      totalSupply: json["total_supply"],
      circulatingSupply: json["circulating_supply"],
    );
  }

  Map<String, dynamic> toJson() => {
        "current_price": Map.from(currentPrice)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "roi": roi?.toJson(),
        "market_cap":
            Map.from(marketCap).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "market_cap_rank": marketCapRank,
        "total_volume": Map.from(totalVolume)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "high_24h":
            Map.from(high24H).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "low_24h":
            Map.from(low24H).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "price_change_24h": priceChange24H,
        "price_change_percentage_24h": priceChangePercentage24H,
        "price_change_percentage_7d": priceChangePercentage7D,
        "price_change_percentage_14d": priceChangePercentage14D,
        "price_change_percentage_30d": priceChangePercentage30D,
        "price_change_percentage_60d": priceChangePercentage60D,
        "price_change_percentage_200d": priceChangePercentage200D,
        "price_change_percentage_1y": priceChangePercentage1Y,
        "market_cap_change_24h": marketCapChange24H,
        "market_cap_change_percentage_24h": marketCapChangePercentage24H,
        "price_change_24h_in_currency": Map.from(priceChange24HInCurrency)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "price_change_percentage_1h_in_currency":
            Map.from(priceChangePercentage1HInCurrency)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "price_change_percentage_24h_in_currency":
            Map.from(priceChangePercentage24HInCurrency)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "price_change_percentage_7d_in_currency":
            Map.from(priceChangePercentage7DInCurrency)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "price_change_percentage_14d_in_currency":
            Map.from(priceChangePercentage14DInCurrency)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "price_change_percentage_30d_in_currency":
            Map.from(priceChangePercentage30DInCurrency)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "price_change_percentage_60d_in_currency":
            Map.from(priceChangePercentage60DInCurrency)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "price_change_percentage_200d_in_currency":
            Map.from(priceChangePercentage200DInCurrency)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "price_change_percentage_1y_in_currency":
            Map.from(priceChangePercentage1YInCurrency)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "market_cap_change_24h_in_currency":
            Map.from(marketCapChange24HInCurrency)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "market_cap_change_percentage_24h_in_currency":
            Map.from(marketCapChangePercentage24HInCurrency)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "total_supply": totalSupply,
        "circulating_supply": circulatingSupply,
      };
}
