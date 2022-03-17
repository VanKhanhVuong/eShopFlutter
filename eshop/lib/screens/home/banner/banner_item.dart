import 'package:eshop/models/banner.dart';
import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  final AppBanner appBanner;

  const BannerItem({
    Key key,
    this.appBanner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: NetworkImage(appBanner.thumbnaiUrl),
            fit: BoxFit.cover,
          )),
    );
  }
}
