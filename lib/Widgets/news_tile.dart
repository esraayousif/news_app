import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile ({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child:
          Image.network(articleModel.image??'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
           articleModel.title,
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
             style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold,
               fontSize: 20,
             ),
        ),
        Text(
          articleModel.subtitle??'',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ],

    );
  }
}
