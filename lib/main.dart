import 'package:flutter/material.dart';
import 'services/new_service.dart';
void main() {
  runApp(NewsCloud());
}

class NewsCloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Cloud ',
      home: Scaffold(
        body: Center(
            child: GestureDetector(
                onTap: () async {
                    NewsAPI newsAPI= NewsAPI();
                    var articles= await newsAPI.fetchArticles();
                    for(var article in articles){
                      print(article.title);
                    }
                },
                child: Container(
                  child: Text('fetch Data'),
                ))),
      ),
    );
  }
}
