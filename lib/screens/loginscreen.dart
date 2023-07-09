import 'package:chi/screens/homescreen.dart';
import 'package:chi/screens/signupscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          children: [
            TextField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Enter Email',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _pass,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                hintText: 'Enter Pass',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () => {
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: _email.text, password: _pass.text)
                    .then(
                      (value) => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => HomeScreen()),
                        ),
                      ),
                    )
                    .onError((error, stackTrace) => print(error.toString()))
              },
              child: Text('Login'),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: (() => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => SignUp()),
                      ),
                    )),
                child: Text('Sign Up'))
          ],
        ),
      ),
    );
  }
}
