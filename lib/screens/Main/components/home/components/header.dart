import 'package:flutter/material.dart';
import 'package:junk_app/constant.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: DefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: DefaultPadding,
                right: DefaultPadding,
                bottom: 36 + DefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Row(children: <Widget>[
              Text('สวัสดีท่านสมาชิก',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ]),
          ),
        ],
      ),
    );
  }
}
