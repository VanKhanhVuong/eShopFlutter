import 'package:eshop/models/banner.dart';
import 'package:eshop/screens/home/banner_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerBox extends StatefulWidget {
  const BannerBox({Key key}) : super(key: key);

  @override
  _BannerBoxState createState() => _BannerBoxState();
}

class _BannerBoxState extends State<BannerBox> {
  var _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _selectIndex = index;
                });
              },
              controller: PageController(viewportFraction: 1),
              itemCount: bannerList.length,
              itemBuilder: (context, index) {
                return BannerItem(
                  appBanner: bannerList[index],
                );
              }),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    bannerList.length,
                    (index) => Indicator(
                        isActive: _selectIndex == index ? true : false))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    Key key,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: isActive ? 22.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.green.shade600 : Colors.grey,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
