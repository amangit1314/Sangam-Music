import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../features/nav/nav_bar.dart';
import '../../../../models/user_model.dart' as model;
import '../../../../features/auth/view/login/login_screen.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<model.User> getUserDetails() async {
    User? currentUser = _auth.currentUser;
    if (currentUser != null) {
      DocumentSnapshot<Map<String, dynamic>> snap =
          await _firestore.collection('users').doc(currentUser.uid).get();

      return model.User.fromMap(snap.data()!);
    } else {
      throw Exception("User not authenticated.");
    }
  }

  handleAuthState() {
    return StreamBuilder(
      stream: _auth.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return const NavPage();
        } else {
          return const LogInScreen();
        }
      },
    );
  }

  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      model.User user = model.User(
        email: email,
        userName: username,
        uid: cred.user!.uid,
        recentlyPlayed: [],
        playLists: [], // Initialize other lists accordingly
        followers: [],
        following: [],
        subscription: null,
      );

      await _firestore
          .collection('users')
          .doc(cred.user!.uid)
          .set(user.toMap()); // Use toMap() instead of toJson()

      return 'success';
    } on FirebaseAuthException catch (err) {
      // Handle FirebaseAuthException
      return err.message ?? 'Some error occurred';
    } catch (err) {
      return err.toString();
    }
  }

  Future<String> loginUser({required email, required password}) async {
    String res = "❓error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'success';
      } else {
        res = '❗Please enter both email and password';
      }
    } catch (err) {
      res = res.toString();
    }
    return res;
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email"]).signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await _auth.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
