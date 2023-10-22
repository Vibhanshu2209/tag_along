import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tag_along/services/auth.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _signInButtonText = "Sign In Anonymously";

  final AuthService _service = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white70,
      child: Center(
        child: ElevatedButton(
          onLongPress: () {
            _service.signOut();
            setState(() {
            
            _signInButtonText = "Sign In Anonymously";
            });
          },
          child: Text(_signInButtonText),
          onPressed: () async { 
            User? user = await _service.signWithEmailandPassword("vibhanshu2209@gmail.com", "password");
            setState(() {
              _signInButtonText = user!.uid.toString();
            });

          }
        ),
      ),
    );
  }
}