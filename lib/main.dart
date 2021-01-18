import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/home_view.dart';
import 'view_model/list_of_articles_view_model.dart';
void main() {
  runApp(NewsCloud());
}

class NewsCloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ArticlesListViewModel>(
      create: (context)=>ArticlesListViewModel(),
      child: MaterialApp(
        title: 'News Cloud ',
        home: HomeView()
        /*Scaffold(
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
        ),*/
      ),
    );
  }
}
