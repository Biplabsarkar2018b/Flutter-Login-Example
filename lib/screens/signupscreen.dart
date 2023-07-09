import 'package:chi/screens/homescreen.dart';
import 'package:chi/screens/loginscreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup Screen')),
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
                    .createUserWithEmailAndPassword(
                        email: _email.text, password: _pass.text)
                    .then(
                      (value) => {

                        FirebaseDatabase.instance.ref('Users').child(value.user!.uid).set({
                          'id': value.user!.uid,
                          'name': 'not given',
                          'email': value.user!.email
                        }),

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => HomeScreen()),
                          ),
                        )
                      },
                    )
                    
              },
              child: Text('Sign Up'),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: (() => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: ((context) => LoginScreen())))),
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
