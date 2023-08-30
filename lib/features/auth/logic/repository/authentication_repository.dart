import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../../../models/user_model.dart';
import 'base_auth_repository.dart';

class AuthenticationRepository extends BaseAuthRepository {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

  AuthenticationRepository({
    firebase_auth.FirebaseAuth? firebaseAuth,
  }) : firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  Stream<User> get user {
    return firebaseAuth.authStateChanges().map((firebaseUser) {
      final user = firebaseUser == null ? User.empty : firebaseUser.toUser;
      return user;
    });
  }

  @override
  Future<String> register({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      log('Successfully registered 😁');
      return 'Success';
    } catch (e) {
      log(e.toString());
      return e.toString();
    }
  }

  @override
  Future<String> login({
    required String email,
    required String password,
  }) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      log('Successfully logged in 😁');
      return 'Success';
    } catch (e) {
      log(e.toString());
      return e.toString();
    }
  }

  @override
  Future<String> forgotPassword({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() async {
    await firebaseAuth.signOut();
  }
}

extension on firebase_auth.User {
  User get toUser {
    return User(
      uid: uid,
      email: email!,
      userName: displayName,
      userImage: photoURL,
    );
  }
}
