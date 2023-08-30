// ignore_for_file: unused_field

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../features/auth/logic/repository/authentication_repository.dart';

class AuthProvider with ChangeNotifier {
  User? _user;

  final AuthenticationRepository authRepository = AuthenticationRepository();

  User get getUser => authRepository.user as User;

  Future<void> loginUser(
      {required String email, required String password}) async {
    User user = (await authRepository.login(
      email: email,
      password: password,
    )) as User;
    _user = user;
    notifyListeners();
  }

  Future<void> registerUser(
      {required String email, required String password, String? number}) async {
    User user = (await authRepository.register(
      username: email.substring(0, 5),
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
