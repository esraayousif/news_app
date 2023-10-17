import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';

import '../models/article_model.dart';
import 'news_tile.dart';



class NewsTileView extends StatelessWidget {
  final List<ArticleModel> articles ;

  NewsTileView({super.key, required this.articles});



  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
              (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: NewsTile(
                articleModel: articles[index],
              ),
            );
          }),
    );
  }
}
