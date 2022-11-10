import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/firebase/auth/auth_methods.dart';

class AuthProvider with ChangeNotifier {
  User? _user;
  // creating object of the AuthMehods class
  final AuthMethods _authMethods = AuthMethods();

  // a getter to get the user from getUser method
  User get getUser => _user!;

  // a future method to login the user
  Future<void> loginUser() async {
    User user =
        (await _authMethods.loginUser(email: null, password: null)) as User;
    _user = user;
    notifyListeners();
  }

  // a future method to register the user
  Future<void> registerUser() async {
    User user = (await _authMethods.signUpUser(
        email: '', password: 'null', username: '')) as User;
    _user = user;
    notifyListeners();
  }
}
