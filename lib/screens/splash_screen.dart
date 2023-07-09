import 'dart:async';

import 'package:chi/screens/homescreen.dart';
import 'package:chi/screens/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();

    checkNavi();
  }

  void checkNavi() async {
    User? user = _auth.currentUser;
    if (user == null) {
      Timer(const Duration(milliseconds: 1500), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => LoginScreen())));
      });
    } else {
      Timer(const Duration(milliseconds: 500), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => HomeScreen())));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
