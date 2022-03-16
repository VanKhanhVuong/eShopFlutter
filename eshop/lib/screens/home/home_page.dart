import 'package:eshop/screens/home/see_all_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'banner_box.dart';
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
              // See all category (Custom)
              SeeAllBox(
                title: 'Exclusive Offer',
              )
              // Product cell (Custom)
            ],
          ),
        ),
      ),
    );
  }
}
