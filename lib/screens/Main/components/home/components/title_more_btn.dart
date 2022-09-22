import 'package:flutter/material.dart';

import 'package:junk_app/constant.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
        child: Row(
          children: <Widget>[
            TitleWithCustomerUnderline(text: title),
            Spacer(),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: PrimaryColor,
                onPressed: press,
                child: Text("เพิ่มเติม", style: TextStyle(color: Colors.white)))
          ],
        ));
  }
}

class TitleWithCustomerUnderline extends StatelessWidget {
  const TitleWithCustomerUnderline({Key? key, required this.text})
      : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: DefaultPadding / 4),
              child: Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(right: DefaultPadding / 4),
                height: 7,
                color: PrimaryColor.withOpacity(0.2),
              ),
            )
          ],
        ));
  }
}
