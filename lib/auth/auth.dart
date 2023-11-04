// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_file/auth/login.dart';
import 'package:green_file/widget/navbar.dart';

// import 'package:login_and_signup/screens/home.dart';

class auth extends StatelessWidget {
  const auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return NavBar();
          } else {
            return const Login();
          }
        }),
      ),
    );
  }
}
