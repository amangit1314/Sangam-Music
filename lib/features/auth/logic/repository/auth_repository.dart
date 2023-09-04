import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sangam_music/models/user_model.dart' as user;

import 'base_auth_repository.dart';

class AuthRepository implements BaseAuthRepository {
  final FirebaseFirestore _firebaseFireStore = FirebaseFirestore.instance
    ..settings = const Settings(persistenceEnabled: false);

  @override
  Future<String> register({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      UserCredential cred =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _firebaseFireStore
          .collection('users')
          .doc(cred.user!.uid)
          .set(user.User(uid: cred.user!.uid, email: email).toMap());
      log('Successfully registered 😁');
      return cred.user!.uid;
    } catch (e) {
      log(e.toString());
      return '';
    }
  }

  @override
  Future<String> login({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential cred =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return cred.user!.uid;
    } catch (e) {
      log(e.toString());
      return '';
    }
  }

  @override
  Future<String> forgotPassword({
    required String email,
    required String password,
  }) {
    try {
      FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return Future.value('Email sent');
    } catch (e) {
      log(e.toString());
      return Future.value('Error sending email');
    }
  }

  @override
  Future<void> logOut() async {
    await _firebaseFireStore.terminate();
  }
}
