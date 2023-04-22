import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:zapitdemo/models/crypto_data.dart';

class CryptoRepo {
  Future getCryptoData() async {
    var response = await http.get(
      Uri.parse(
        "https://api.coingecko.com/api/v3/coins/",
      ),
    );

    if (response.statusCode == 200) {
      log(response.body.toString());
      List<CryptoData> data = [];
      for (var element in jsonDecode(response.body)) {
        data.add(CryptoData.fromJson(element));
      }
      return data;
    }
  }
}
