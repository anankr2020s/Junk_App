import 'package:flutter/material.dart';
import 'package:junk_app/screens/Sigin/components/head.dart';
import 'package:junk_app/screens/Sigin/components/signin_form.dart';

class Signin_screen extends StatelessWidget {
  const Signin_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Head(),
          SizedBox(
            height: 50,
          ),
          Center(
            child: SizedBox(
              width: 350,
              child: Signin_Form(),
            ),
          )
        ],
      ),
    );
  }
}
