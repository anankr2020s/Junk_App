import 'package:flutter/material.dart';
import 'package:junk_app/screens/Login/components/titleText.dart';
import 'package:junk_app/screens/Login/components/login_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextTitle(),
          SizedBox(
            height: 50,
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                child: Login_Form(),
              )
            ],
          )),
        ],
      ),
    );
  }
}
