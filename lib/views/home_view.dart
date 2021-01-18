import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/list_of_articles_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () async {
              await Provider.of<ArticlesListViewModel>(context, listen: false)
                  .fetchArticles();
              print(Provider.of<ArticlesListViewModel>(context, listen: false)
                  .articlesList);
            },
          ),
        ),
      ),
    );
  }
}
