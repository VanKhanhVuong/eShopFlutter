import 'package:flutter/material.dart';

class SeeAllBox extends StatelessWidget {
  final String title;
  const SeeAllBox({Key key, String this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 23.0,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'See all',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
