import 'package:eshop/models/product.dart';
import 'package:flutter/material.dart';

import 'product_item.dart';


class ProductView extends StatelessWidget {
  // const ProductView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.0,
      width: MediaQuery.of(context).size.width,             // Chiều rộng bằng với chiều rộng với thiết bị
      child: GridView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10), // Khoảng cách giữa GirdView với Container
        children: productList.map((e) => ProductItem(product: e)).toList(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2.7/2,                          // 2.7 height & 2 wight
        ),
      ),
    );
  }
}