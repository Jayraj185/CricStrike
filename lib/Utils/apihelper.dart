import 'dart:convert';

import 'package:cricstreak/Screens/news/model/newsmodel.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  ApiHelper._();

  static ApiHelper apiHelper = ApiHelper._();


  Future<Newsmodel?> GetData({required String Sportname}) async {
    String apiLink = "https://newsapi.org/v2/everything?q=$Sportname&from=${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day-1}&sortBy=publishedAt&apiKey=03b0ab6e43d74ffd9cf6ba360e67b03c";
    var response = await http.get(Uri.parse(apiLink));
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return Newsmodel.fromJson(json);
    }
  }

}