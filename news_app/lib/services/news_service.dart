// import 'dart:math';
// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

// import 'package:dio/dio.dart';
// import 'package:news_app/main.dart';
// import 'package:news_app/models/article_model.dart';

// class NewsService {
  
// final Dio dio;//أنشأت نسخة من دايو 
// NewsService(this.dio);// استخدمت النسخة اللي أنشأتها في constuctor
//  Future<List<ArticleModel>> getTopHeadlines({required String category}) async{
  
//   try {
//   Response response =await dio.get(
//     'https://newsapi.org/v2/top-headlines?country=us&apiKey=79784bf87655475ea7b05411f719f1e5&category=$category');
//     Map<String, dynamic> jsonData = response.data;//data is string and transformed into map or list so its type shoud by dynamic
    
//     List<dynamic>articles=jsonData['articles'];//List<dynamic> i make its type dynamic because response.data isnot static it returns map or list not just map or just list
//     //convert list of maps into list of objects
//     List<ArticleModel>articlelist=[];
  
//     //List <ArticleModel(image: '', title:'', subtitle: '')> articles=jsonData['articles'] as List<ArticleModel>;
//     for (var article in articles) {
//      ArticleModel articleModel = ArticleModel(
//       //source: Source(id: article['source']['id'], name:['source'] ['name']),
//       image: article['urlToImage'] as String?,
//       title: article['title']as String,
//       subtitle: article['description']); 
//     //after transforminf map to object store it store this object inside articlelist
//     articlelist.add(articleModel);
//     }
//     print(articlelist);
    
//    return articlelist;
// } on Exception catch (e) {
// return [];
//   // if there is a problem adapt with it here  
// }
// }
  
// }


//import 'dart:math';

import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio; // Use a single instance of Dio

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=79784bf87655475ea7b05411f719f1e5&category=$category');
      Map<String, dynamic> jsonData = response.data; // Dynamic type for flexibility

      List<dynamic> articles = jsonData['articles']; // List of dynamic elements

      List<ArticleModel> articleList = []; // List to store ArticleModel objects

      for (var article in articles) {
    ArticleModel articleModel = ArticleModel.fromJson(article);
    articleList.add(articleModel);
    
          //source: Source(id: article['source']['id'], name: article['source']['name']),
          // image: article['urlToImage'] as String?, // Cast to String? (nullable)
          // title: article['title'] as String,
          // subtitle: article['description'] as String?, // Cast to String? (nullable)
        
         
        
        
       // articleList.add(articleModel);
      }

      return articleList;
    } catch (e) {
      return []; // Return empty list on error
    }
  }
}