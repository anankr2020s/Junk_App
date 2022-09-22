import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:junk_app/constant.dart';
import 'package:junk_app/screens/Login/login_screen.dart';
import '../Classes/Signin_Profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Signin_Form extends StatefulWidget {
  const Signin_Form({Key? key}) : super(key: key);

  @override
  State<Signin_Form> createState() => _Signin_FormState();
}

class _Signin_FormState extends State<Signin_Form> {
  final formKey = GlobalKey<FormState>();

  // Profile Class
  Profile profile = Profile(name: '', email: '', password: '');
  // Validation Class
  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'กรุณาป้อนอีเมล'),
    EmailValidator(errorText: 'กรุณากรอกอีเมลให้ถูกต้อง')
  ]);

  final passValidator = MultiValidator([
    RequiredValidator(errorText: 'กรุณากรอกรหัสผ่าน'),
    MinLengthValidator(8, errorText: 'รหัสผ่านต้องมีความยาว 8 ตัวขึ้นไป'),
  ]);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                onSaved: (String? email) {
                  profile.email = email!;
                },
                validator: emailValidator,
                keyboardType: TextInputType.emailAddress,
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
                validator: passValidator,
                cursorColor: PrimaryColor,
                obscureText: true,
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
              tag: 'signin_btn',
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: GestureDetector(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      try {
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: profile.email,
                                password: profile.password);
                        formKey.currentState!.reset();
                      } on FirebaseAuthException catch (e) {
                        print("Error: ${e.message}");
                      }
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
                      'สร้างบัญชี',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                  ),
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
                        'มีบัญชีเข้าสู่ระบบแล้ว ?',
                        style: TextStyle(color: PrimaryColor),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen())),
                        child: Text(
                          ' เข้าสู่ระบบ',
                          style: TextStyle(
                              color: PrimaryColor, fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                  ),
                ))
          ]),
        ));
  }
}
