import 'package:flutter/material.dart';
import 'package:junk_app/constant.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 50),
          Icon(
            Icons.account_circle_outlined,
            size: 100,
            color: Colors.green[400],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'เข้าสู่ระบบ',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: PrimaryColor),
          ),
          SizedBox(height: 10),
          Text('ยินดีต้อนรับ ท่านสมาชิกทั้งหลาย',
              style: TextStyle(fontSize: 20, color: PrimaryTextColor))
        ]),
      ),
    );
  }
}
