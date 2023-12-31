import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService{
  final Dio dio;

  NewsService(this.dio);
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async{
      try {
        Response response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=05cb720c844f499188a0ae291c8855e3&country=eg&category=$category');
        Map< String, dynamic> jsonData =  response.data;
        List<dynamic> articles= jsonData['articles'];
        
        List<ArticleModel> articleslist = [];
        
        for ( var article in articles){
          ArticleModel articleModel = ArticleModel.fromJson(article);
          articleslist.add(articleModel);
        }
        log("message : ${articleslist.length}");
             return articleslist;
      }  catch (e) {
              return [];
      }
  }

}