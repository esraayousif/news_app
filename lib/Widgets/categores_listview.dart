import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import 'catogry_card.dart';

class CategoresListView extends StatelessWidget {
  const CategoresListView({super.key});

final List <CategoryModel> categories =const [
CategoryModel(image: 'assets/OIP.jpeg', categoryName: 'health'),
  CategoryModel(image: 'assets/OIP (1).jpeg', categoryName: 'sports'),
  CategoryModel(image: 'assets/OIP (2).jpeg', categoryName: 'business'),
  CategoryModel(image: 'assets/R.jpeg', categoryName: 'science'),
  CategoryModel(image: 'assets/R (1).jpeg', categoryName: 'technology'),
  CategoryModel(image: 'assets/R (2).jpeg', categoryName: 'education'),
  CategoryModel(image: 'assets/OIP (2).jpeg', categoryName: 'entertainment'),
  CategoryModel(image: 'assets/technology.jpeg', categoryName: 'entertainment'),


];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return  CategoryCard(
              category: categories[ index],
            );
          }),

    );
  }
}
