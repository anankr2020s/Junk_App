import 'package:flutter/material.dart';
import 'package:junk_app/constant.dart';
import 'package:junk_app/screens/Login/login_screen.dart';

class HomeBtn extends StatelessWidget {
  const HomeBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: GestureDetector(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: PrimaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            'เข้าร่วมกับเรา',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )),
        ),
      ),
    );
  }
}
