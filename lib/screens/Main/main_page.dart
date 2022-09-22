import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:junk_app/screens/Main/components/home/home_page.dart';
import 'package:junk_app/screens/welcome/welcome_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomePage();
            } else {
              return WelcomeScreen();
            }
          }),
    );
  }
}
