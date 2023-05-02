import 'dart:convert';

import 'package:cricstreak/Screens/news/model/newsmodel.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  ApiHelper._();

  static ApiHelper apiHelper = ApiHelper._();

  String apiLink = "https://newsapi.org/v2/everything?q=cricket&from=2023-04-02&sortBy=publishedAt&apiKey=03b0ab6e43d74ffd9cf6ba360e67b03c";

  Future<Newsmodel?> GetData() async {
    var response = await http.get(Uri.parse(apiLink));
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return Newsmodel.fromJson(json);
    }
  }

}