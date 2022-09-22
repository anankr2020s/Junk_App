import 'package:flutter/material.dart';
import 'package:junk_app/constant.dart';
import 'package:junk_app/screens/Sigin/sigin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Classes/login_profile.dart';

class Login_Form extends StatefulWidget {
  const Login_Form({Key? key}) : super(key: key);

  @override
  State<Login_Form> createState() => _Login_FormState();
}

class _Login_FormState extends State<Login_Form> {
  final formKey = GlobalKey<FormState>();
  //Profile Classes
  Profile profile = Profile(email: '', password: '');
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextFormField(
            onSaved: (String? email) {
              profile.email = email!;
            },
            cursorColor: PrimaryColor,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: PrimaryColor),
                    borderRadius: BorderRadius.circular(12)),
                border: InputBorder.none,
                hintText: 'อีเมลของคุณ',
                fillColor: Colors.grey[200],
                filled: true),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextFormField(
            onSaved: (String? password) {
              profile.password = password!;
            },
            obscureText: true,
            cursorColor: PrimaryColor,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: PrimaryColor),
                    borderRadius: BorderRadius.circular(12)),
                border: InputBorder.none,
                hintText: 'รหัสผ่านของคุณ',
                fillColor: Colors.grey[200],
                filled: true),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Hero(
            tag: 'login_btn',
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: GestureDetector(
                    onTap: () async {
                      formKey.currentState!.save();
                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: profile.email,
                          password: profile.password,
                        );
                        formKey.currentState!.reset();
                      } on FirebaseAuthException catch (e) {
                        print(e.message);
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Text(
                        'เข้าสู่ระบบ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 58),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Row(children: <Widget>[
                          Text(
                            'ไม่มีบัญชีเข้าสู่ระบบ ?',
                            style: TextStyle(color: PrimaryColor),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Signin_screen())),
                            child: Text(
                              ' สร้างบัญชี',
                              style: TextStyle(
                                  color: PrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ]),
                      ),
                    ))
              ],
            ))
      ]),
    );
  }
}
