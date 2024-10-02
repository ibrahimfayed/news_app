import 'package:flutter/material.dart';
import 'package:news_app/widgets/categort_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        // elevation: 0,
        // backgroundColor: Colors.transparent,
        centerTitle: true,
        title:const Row( 
          mainAxisSize: MainAxisSize.min,
          children: [
             Text('News',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
              Text('Cloud',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),)
          ],
        ),
      ),
      //body:const CategoryListView()
      //body:const News()
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(// a highly customizable scrolling widget that allows you to create complex scrolling effects and layouts.
          slivers: [
            SliverToBoxAdapter(//A widget used to incorporate a regular Box widget (like Container, Column, or Row) into a CustomScrollView.
              child: CategoryListView(),
            )
             ,SliverToBoxAdapter(child: SizedBox(height: 32,)
            ,)
            ,//SliverToBoxAdapter(child: News_List_View()),
            //i use it in using custom widget because it just improves performance and make the list lazy which i want
            NewsListViewBuilder(category: 'general',)
          ],
          //it is the same as children just different in name
        ),
        // child: Column(
        //   children: [
        //     // Category list (assuming CategoryListView displays categories)
        //     const CategoryListView(),
        //     SizedBox(
        //       height: 32,
        //     ),
        //     // News list (assuming NewsListView displays news items)
        //     Expanded( // Ensures NewsListView fills available space
        //       child: News_List_View(),
        
        //  ) ],
        // ),
      )

   );
  }
}




