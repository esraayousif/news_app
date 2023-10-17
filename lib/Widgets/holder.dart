// import 'dart:developer';
//
// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/services/news_service.dart';
//
// import '../models/article_model.dart';
// import 'news_tile.dart';
//
// class NewsTileView extends StatefulWidget {
//   const NewsTileView({super.key});
//
//   @override
//   State<NewsTileView> createState() => _NewsTileViewState();
// }
//
// class _NewsTileViewState extends State<NewsTileView> {
//   List<ArticleModel> articles = [];
//
//   bool isLoading = true;
//
//   Future<void> getGenralNews() async {
//     articles = await NewsService(Dio()).getNews();
//
//     isLoading = false;
//     setState(() {});
//   }
//
//   @override
//   void initState() {
//
//     getGenralNews();
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//       delegate: SliverChildBuilderDelegate(childCount: articles.length,
//               (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 16),
//               child: NewsTile(
//                 articleModel: articles[index],
//               ),
//             );
//           }),
//     );
//   }
// }