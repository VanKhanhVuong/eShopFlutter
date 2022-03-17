import 'package:eshop/screens/home/category/category_view.dart';
import 'package:eshop/screens/home/product_cell/product_box.dart';
import 'package:eshop/screens/home/see_all_box.dart';
import 'package:flutter/material.dart';


import 'banner/banner_box.dart';
import 'search_box.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SearchBox(),
              BannerBox(),
              SeeAllBox(
                title: 'Exclusive Offer',
              ),
              ProductView(),
              SeeAllBox(
                title: 'Best Selling',
              ),
              ProductView(),
              SeeAllBox(
                title: 'Category',
              ),
              CategoryView(),
            ],
          ),
        ),
      ),
    );
  }
}
