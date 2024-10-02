//import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/models/article_model.dart';

class News extends StatelessWidget {
  const News({super.key, required this.articleModel});
  final ArticleModel articleModel;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
       children: [
        ClipRRect(//i use it when i want to give border to the widget instead of container
            borderRadius: BorderRadius.circular(6),
            
            child: CachedNetworkImage(
        imageUrl: articleModel.image??'',
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
            
            // Image.network(
            //   articleModel.image!,
            //   height: 200,
            //   width: double.infinity,
            //   fit: BoxFit.cover,
            // )
            ),),
        const SizedBox(
          height: 12,
        ),//Adds 12 pixels of vertical spacing after the image.
        Text(
        articleModel.title,
        maxLines: 2,//max num of lines
        overflow: TextOverflow.ellipsis,//specifies that if the text content overflows the widget's boundaries, it should be truncated and replaced with an ellipsis (...) at the end.
        style:const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight:FontWeight.w500
        ),
        
        )
        ,const SizedBox(
          height: 8,
        ),//Adds 8 pixels of vertical spacing after the image.
      
        Text(
        articleModel.subtitle??'',// it means if it is not null show me empty srting
        maxLines: 2,
        style:const TextStyle(color: Colors.grey,fontSize: 10),)

        
      ],

    );
  }
}
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:news_app/models/article_model.dart';

// class News extends StatelessWidget {
//   const News({super.key, required this.articleModel});
//   final ArticleModel articleModel;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(6),
//           child: CachedNetworkImage(
//             imageUrl: articleModel.image!, // Use null-safe operator
//             placeholder: (context, url) => Center(child: CircularProgressIndicator()),
//             errorWidget: (context, url, error) => Icon(Icons.error),
//             height: 200,
//             width: double.infinity,
//             fit: BoxFit.cover,
//           ),
//         ),
//         const SizedBox(
//           height: 12,
//         ), // Adds 12 pixels of vertical spacing after the image.
//         Text(
//           articleModel.title,
//           maxLines: 2,
//           overflow: TextOverflow.ellipsis,
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         const SizedBox(
//           height: 8,
//         ), // Adds 8 pixels of vertical spacing after the image.
//         Text(
//           articleModel.subtitle ?? '', // Use null-safe operator
//           maxLines: 2,
//           style: TextStyle(color: Colors.grey, fontSize: 10),
//         ),
//       ],
//     );
//   }
// }
