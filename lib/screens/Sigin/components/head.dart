import 'package:flutter/material.dart';
import 'package:junk_app/constant.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(height: 50),
        Text(
          'สมัครสมาชิก',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: PrimaryColor),
        ),
        SizedBox(height: 10),
        Text('เพื่อเข้าร่วมเป็นสมาชิกกับเรา',
            style: TextStyle(fontSize: 20, color: PrimaryTextColor))
      ]),
    );
  }
}
