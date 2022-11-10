import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/firebase/auth/auth_methods.dart';

// A Change Notifier inherited State Class which can be used or listen at the same time at any place where the specified state in this class is required
class UserProvider with ChangeNotifier {
  User? _user;
  // creating object of the AuthMehods class
  final AuthMethods _authMethods = AuthMethods();

  // a getter to get the user from getUser method
  User get getUser => _user!;

  // a future method to refresh the user
  Future<void> refreshUser() async {
    User user = (await _authMethods.getUserDetails()) as User;
    _user = user;
    notifyListeners();
  }
}
