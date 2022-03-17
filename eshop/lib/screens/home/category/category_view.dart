import 'package:eshop/models/category.dart';
import 'package:flutter/material.dart';
import 'category_item.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,  // Chiều rộng bằng với chiều rộng với thiết bị
      child: GridView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10), // Khoảng cách giữa GirdView với Container
        children: categoryList.map((e) => CategoryItem(category: e)).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio: 1/2.5, // Chiều rộng gấp 2.5 chiều cao
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}