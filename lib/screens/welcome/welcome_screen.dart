import 'package:flutter/material.dart';
import 'package:junk_app/screens/welcome/components/hometext.dart';
import 'package:junk_app/screens/welcome/components/homebtn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextTitle(),
          SizedBox(
            height: 370,
          ),
          HomeBtn()
        ],
      ),
    );
  }
}
