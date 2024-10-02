import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key,});
  final List <CategoryModel> categories= const [
    CategoryModel(image: 'assets/OIP.jpg', category_name: 'Business'),
    CategoryModel(image: 'assets/entertaiment.avif', category_name: 'Entertainment'),
    CategoryModel(image: 'assets/health.avif', category_name: 'Health'),
    CategoryModel(image: 'assets/science.avif', category_name: 'Science'),
    CategoryModel(image: 'assets/sports.avif', category_name: 'Sports'),
    CategoryModel(image: 'assets/technology.jpg', category_name: 'Technology'),
    CategoryModel(image: 'assets/general.avif', category_name: 'General'),
    


  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,//the height here must be the same height of item
      child: ListView.builder(//فرقها عن ListView ان دي أفضل مخلتنيش أكرر اللي هعمله يعمله هو عن طريق لووووب
        scrollDirection: Axis.horizontal,//في الأغلب هنا هستخدم size box و أحدد الheight بتاعها
        itemCount: categories.length,
        itemBuilder: (context, index) {
        // i used a class to create a list because there is a text and a photo not just one thing
        return CategoryCard(
          category: categories[index],
        );
      }, //يفصل انك متحطش كذاwidget في الأول و تصعب الدنيا علي نفسك
          
       
         ),
    );
  }
}