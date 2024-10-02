import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'news_list_view.dart';



class NewsListViewBuilder extends  StatefulWidget{
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
// the adv of using initstate that it is called once unlike build methoud
   super.initState();
  future = NewsService(Dio()).getTopHeadLines(category: widget.category);// i perform  widget.category to access the category correctlly 
  
 }
   //List<ArticleModel> articles  = [];
  @override
  Widget build(BuildContext context) {
  return FutureBuilder <List<ArticleModel>>(//FutureBuilder has the ability to rebuild widget returned appling your request
    future: future,//it is the reqest of the api
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return News_List_View(articles: snapshot.data!);
      } else if (snapshot.hasError) {
        return const SliverToBoxAdapter(
          child: Center(child: Text('Oops, there was an error!')),
        );
      } else {
        return const SliverToBoxAdapter(
          child: Center(child: CircularProgressIndicator()),
        );
      }
    },
  );
}
}
