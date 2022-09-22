import 'package:flutter/material.dart';

import '../constant.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: DefaultPadding * 2,
        right: DefaultPadding * 2,
        bottom: DefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 35,
            color: PrimaryColor.withOpacity(0.38),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.article_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.home_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_outline_rounded),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
