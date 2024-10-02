import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news.dart';

// class News_List_View extends StatefulWidget {
//   const News_List_View({
//     super.key,
//   });

//   @override
//   State<News_List_View> createState() => _News_List_ViewState();
// }

class News_List_View extends StatelessWidget {
  
  final List<ArticleModel> articles ;

  const News_List_View({super.key, required this.articles});
  

  //bool isloading = true;
     
  // @override  //this is the first stage 
  // void initState() {
  //   // the adv of using initstate that it is called once unlike build methoud
  //   super.initState();
  // // getGeneralNews();
  // }

  // Future<void> getGeneralNews() async {//if i make this solution it won't run without hot reload
  //   articles= await NewsService(Dio()).getGeneralNews();
  //   //isloading = false;
  //   setState(() {
  //     // showDialog(
  //     //   context: context
  //     // , builder: (context){
  //     //   return CircularProgressIndicator();
  //     // });
  //   });
  // }


  // @override //this is the final stage
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }
  @override
  
  Widget build(BuildContext context) {
    //return ListView.builder(
    //   shrinkWrap: true,//خلت ليها height محدد فمش هتعمل مشكلة خالص
    //   physics: const NeverScrollableScrollPhysics(),//بيخليها متعملش سكرول و اللي بيعمل الاسكرول هو custum widget
    //   itemCount: 10,
    //   itemBuilder: (context,index){
        
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 20),
    //       child: News(),
    //     );
    //   })
    //NewsService(Dio()).getTopHeadLines;
    //it is correct but getting news is expensive opearation not free so i should use it once
    //to solve this problem i will try to use statefullwidget
   return 
   //isloading ? SliverToBoxAdapter(child: Center(child: const CircularProgressIndicator())):
       SliverList(
              delegate: SliverChildBuilderDelegate(//بتخليه يبني widgetاللي عندي بس مشكله
                childCount: articles.length,
                (context, index){
              return Padding(
                padding:const EdgeInsets.only(bottom: 20),
                child: News(articleModel: articles[index],),
              );
            }
            )
            );
  }
}