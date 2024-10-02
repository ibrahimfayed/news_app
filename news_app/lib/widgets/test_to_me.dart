
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_service.dart';

// import 'news_list_view.dart';



// class NewsListViewBuilder extends  StatelessWidget{
//    //List<ArticleModel> articles  = [];

//   //bool isloading = true;
     
//   // @override  //this is the first stage 
//   // void initState() {
//   //   // the adv of using initstate that it is called once unlike build methoud
//   //   super.initState();
//   //  getGeneralNews();
//   // }

//   // Future<void> getGeneralNews() async {
//   //   articles= await NewsService(Dio()).getGeneralNews();
//   //   isloading = false;
//   //   setState(() {
//   //     // showDialog(
//   //     //   context: context
//   //     // , builder: (context){
//   //     //   return CircularProgressIndicator();
//   //     // });
//   //   });
//   // }


//   // @override //this is the final stage
//   // void dispose() {
//   //   // TODO: implement dispose
//   //   super.dispose();
//   // }
//   @override
//   Widget build(BuildContext context) {
//   return FutureBuilder(
//     future: NewsService(Dio()).getGeneralNews(),//it is the reqest of the api
//     builder: (context, snapshot) {
//       if (snapshot.hasData) {
//         return News_List_View(articles: snapshot.data!);
//       } else if (snapshot.hasError) {
//         return const SliverToBoxAdapter(
//           child: Center(child: Text('Oops, there was an error!')),
//         );
//       } else {
//         return const SliverToBoxAdapter(
//           child: Center(child: CircularProgressIndicator()),
//         );
//       }
//     },
//   );
// }
// //   Widget build(BuildContext context) {
// //     return FutureBuilder(
// //     future:NewsService(Dio()).getGeneralNews() ,//here i put the reqest w
// //     builder: (context, snapshot ) {     
// //       // snapshot is a container contain the information that i wait

// //       if (snapshot.hasData) {
// //   return News_List_View(
// //     articles: snapshot.data !,
// //        );
// // } else if (snapshot.hasError){
// //  const SliverToBoxAdapter(child: Center(child: Text('oops there was an error')),);
// // }
// // else{
// //   return  SliverToBoxAdapter(
// //        child: Center(
// //        child: CircularProgressIndicator()
// //        ),
// //        );
// // }
// //      },);
//     // return isloading? 
//     // SliverToBoxAdapter(
//     //   child: Center(
//     //   child: CircularProgressIndicator())):
//     //   articles.isEmpty? News_List_View(
//     //   articles: articles,
//     // ):SliverToBoxAdapter(child: Center(child: Text('oops there was an error')),);
//   }
