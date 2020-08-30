import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/ResponseNews.dart';

String apiKey = "21c15c0a820c4c6d9e2a2199ecc66ca6";

class News {
  Future<ResponseNews> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=id&apiKey=$apiKey";

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    return ResponseNews.fromJsonMap(jsonData);
  }
}

class NewsByCategory {
  Future<ResponseNews> getNewsByCategory(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=id&category=$category&apiKey=$apiKey";

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    return ResponseNews.fromJsonMap(jsonData);
  }
}
