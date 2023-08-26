// ignore_for_file: unused_field

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../repositories/auth_repository.dart';

class AuthProvider with ChangeNotifier {
  User? _user;

  final AuthRepository authRepository = AuthRepository();

  User get getUser => authRepository.user as User;

  Future<void> loginUser(
      {required String email, required String password}) async {
    User user = (await authRepository.loginWithCredentials(
      email: email,
      password: password,
    )) as User;
    _user = user;
    notifyListeners();
  }

  Future<void> registerUser(
      {required String email, required String password, String? number}) async {
    User user = (await authRepository.register(
      email: email,
      password: password,
    )) as User;
    _user = user;
    notifyListeners();
  }

  Future<void> logoutUser() async {
    await authRepository.logOut();
    _user = null;
    notifyListeners();
  }
}
