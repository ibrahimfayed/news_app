import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

final CategoryModel category;
  @override
  Widget build(BuildContext context) {// build(BuildContext  جت عن طريق اني بنيتها في الpage  اللي فاتت عادس و عملتلها extract في الأخر بس لأني هعوز أكررها بعد كده
    return  GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: category.category_name,
          );
        },
        )
        ,);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
        height: 100,
        width: 160,
        decoration: BoxDecoration(
          image: DecorationImage(//to make background image 
            fit: BoxFit.fill,
            image: AssetImage(category.image)),
          borderRadius: BorderRadius.circular(18)
        ),
        child: Center(
          child: Text(
          category.category_name,
        style:const TextStyle(fontWeight: FontWeight.bold,
          color: Colors.white)
          ,)
          ),
        
           ),
      ),
    ) ;
  }
}
