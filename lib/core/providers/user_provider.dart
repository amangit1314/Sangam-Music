import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';

import '../../models/user_model.dart';
import '../repositories/auth_repository.dart';
import '../services/firebase/auth/auth_methods.dart';

class UserProvider with ChangeNotifier {
  firebase_auth.User? _user;

  final AuthMethods _authMethods = AuthMethods();
  final AuthRepository authRepository = AuthRepository();

  firebase_auth.User get getUser => _user!;

  Future<void> refreshUser() async {
    firebase_auth.User user =
        (await _authMethods.getUserDetails()) as firebase_auth.User;
    _user = user;
    notifyListeners();
  }

  Stream<User> get user {
    return authRepository.user;
  }
}
