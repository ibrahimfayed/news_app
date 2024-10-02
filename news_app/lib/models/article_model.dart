class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;//? because it maybe null(nullable)
  //final Source source;
  ArticleModel({//required this.source
   required this.image
  ,required this.title
  ,required this.subtitle});//constructor
  
  factory ArticleModel.fromJson(json){//it make me able to make object of article model
    //this part is discussed in the final vidio
    return ArticleModel(
          
        
         image: json['urlToImage'] as String?,//json here is the map i build with
        title: json['title'] as String,
        subtitle: json['description'] as String?,
        
        );
  }
}


// class Source {
//   final String id ;//i can preform constructor quiclly from the lamp apears on id here
//   final String name;

//   Source({required this.id, required this.name});
  
  
// }
//i shoud create this class to deal easily instead of dealing with maps 