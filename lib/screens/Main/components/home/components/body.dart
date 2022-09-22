import 'package:flutter/material.dart';
import 'package:junk_app/screens/Main/components/home/components/header.dart';
import 'package:junk_app/screens/Main/components/home/components/recom_trash.dart';
import 'package:junk_app/screens/Main/components/home/components/title_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(),
            TitleWithMoreBtn(title: "ประเภทขยะ", press: () {}),
            RecomendsTrash(),
          ]),
    );
  }
}
