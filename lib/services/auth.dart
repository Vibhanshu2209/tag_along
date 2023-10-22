import 'dart:developer' as dev;

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final _auth = FirebaseAuth.instance;
  User? _user;

  Future<User?> signInAnonymous() async {

    try{
      UserCredential anonUser =  await _auth.signInAnonymously();
      _user = anonUser.user!;
      return _user;
    }
    catch (e) {
      dev.log("Error in authenticating or connection");
      return null;
    }
  }

  void signOut() async {
    await _auth.signOut();
    _user = null;
  }

  Future<User?> signWithEmailandPassword(String email, String password) async {
    try{
      if (_user != null) return _user;
      UserCredential anonUser = await _auth.signInWithEmailAndPassword(email: email, password: password);
      _user = anonUser.user!;
      return _user;
    }
    catch(e){
      dev.log("Error in authenticating or connection");
      return null;
    }

  }
}