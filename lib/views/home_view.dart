
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Widgets/categores_listview.dart';
import 'package:news_app/Widgets/catogry_card.dart';
import 'package:news_app/Widgets/news_list_view.dart';
import 'package:news_app/Widgets/news_tile.dart';

import '../Widgets/news_list_view_builder.dart';
import '../models/article_model.dart';
import '../services/news_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return  Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News', style: TextStyle(color: Colors.black),),
            Text('Cloud', style: TextStyle(color: Colors.orange),),

          ],
        ),

      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child:
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoresListView(),),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),

            ),

              NewsListViewBuilder(
                category:  'general',
              )

          ],
        ),








        ),
      );




  }
}
