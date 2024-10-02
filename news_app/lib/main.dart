import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  //NewsService(Dio()).getGeneralNews();//this line explained in vedio 185
  //getGeneralNews();
  runApp(const NewsApp());

}

// final dio = Dio();

// void getGeneralNews() async {
//   final response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=79784bf87655475ea7b05411f719f1e5');
//   print(response);
// }

// void getSportsNews() async {
//   final response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=79784bf87655475ea7b05411f719f1e5');
//   print(response);
// }
class NewsApp extends StatelessWidget {
   const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}