import 'package:eshop/models/category.dart';
import 'package:flutter/material.dart';


class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({
    this.category
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
          decoration: BoxDecoration(
              color: category.color,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Text(
              category.content,
              style: const TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold
              ),
            ),
          )
      ),
    );
  }
}