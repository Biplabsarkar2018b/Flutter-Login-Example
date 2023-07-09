import 'package:chi/screens/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _name = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Enter New Name',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
              ),
          ),
          TextButton(onPressed: (() => {
            FirebaseDatabase.instance.ref('Users').child(FirebaseAuth.instance.currentUser!.uid).update({
              'name': _name.text
            }).onError((error, stackTrace) => print(error.toString()),),
            print('Updated')
          }), child: Text('Update Name')),
          Text('${_auth.currentUser?.email.toString()}'),
          TextButton(
              onPressed: () => {
                    FirebaseAuth.instance.signOut(),
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => LoginScreen())))
                  },
              child: Text('Sign Out'))
        ],
      ),
    );
  }
}
