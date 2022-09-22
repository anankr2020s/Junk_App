import 'package:flutter/material.dart';
import 'package:junk_app/constant.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(25.0, 110.0, 0.0, 0.0),
            child: Text(
              'เคยรู้สึกไหม',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: PrimaryColor),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25.0, 140.0, 0.0, 0.0),
            child: Text(
              'ทำไมการทิ้งขยะ ดูน่าเบื่อจัง',
              style: TextStyle(fontSize: 15.0, color: PrimaryTextColor),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(150.0, 250.0, 0.0, 0.0),
            child: Text(
              'ทำไมต้องแยกขยะ',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: PrimaryColor),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(148.0, 280.0, 0.0, 0.0),
            child: Text(
              'ในเมื่อสุดท้ายก็เอาไปเทรวมกัน',
              style: TextStyle(fontSize: 15.0, color: PrimaryTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
