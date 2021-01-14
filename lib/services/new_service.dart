import 'dart:convert';

import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/articles_model.dart';

import 'package:http/http.dart' as http;

class NewsAPI {
  Future<List<Article>> fetchArticles() async {
    try {
      final String apiKey = '9e08b00fb0294e6da3cb87c17f169239';
      http.Response response = await http.get(
          'https://newsapi.org/v2/top-headlines?country=eg&apiKey=$apiKey');
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articles articlels = Articles.fromJson(jsonData);
        List<Article> articleList =
            articlels.articles.map((e) => Article.fromJson(e)).toList();
            return articleList;
      } else {
        print('status code :${response.statusCode}');
      }
    } catch (ex) {
      print(ex);
    }
  }
   Future<List<Article>> fetchArticlesByCategory(String category) async {
    try {
      final String apiKey = '9e08b00fb0294e6da3cb87c17f169239';
      http.Response response = await http.get(
          'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$apiKey');
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articles articlels = Articles.fromJson(jsonData);
        List<Article> articleList =
            articlels.articles.map((e) => Article.fromJson(e)).toList();
            return articleList;
      } else {
        print('status code :${response.statusCode}');
      }
    } catch (ex) {
      print(ex);
    }
  }

}
