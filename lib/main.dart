// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:junk_app/screens/Main/main_page.dart';
import 'package:junk_app/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:junk_app/screens/Main/components/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Junk App',
        theme: ThemeData(
            primaryColor: PrimaryColor, scaffoldBackgroundColor: Colors.white),
        home: MainPage());
  }
}
