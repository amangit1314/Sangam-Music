import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sangam/core/models/user.dart' as model;
import 'package:sangam/features/auth/login/presentation/login_page.dart';
import 'package:sangam/features/nav/nav_bar.dart';

// A class holding auth methods
class AuthMethods {
  // Firebase auth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Firebase firestore instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // a future method to get user derails from firebase
  Future<model.User> getUserDetails() async {
    // getting the current user from firebase auth
    User currentUser = _auth.currentUser!;
    // getting the user details from firestore
    final DocumentSnapshot snap =
        await _firestore.collection('users').doc(currentUser.uid).get();
    // creating a user model from the snapshot
    return model.User.fromSnap(snap);
  }

  handleAuthState() {
    return StreamBuilder(
      stream: _auth.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return NavPage();
        } else {
          return LogInPage();
        }
      },
    );
  }

  // a future method to register the user from firebase
  Future<String> signUpUser(
      {required String email,
      required String password,
      required String username,
      String bio = ''
      // required Uint8List file,
      }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty
          //||
          // file != null
          // ignore: unnecessary_null_comparison
          ) {
        //  register user using firebase method {createUserWithEmailAndPassword}
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        // file,
        // String photoUrl = await StorageMethods()
        //     .uploadImageToStorage('postPics',  false);

        model.User user = model.User(
          bio: bio,
          email: email,
          username: username,
          //photoUrl: photoUrl,
          uid: cred.user!.uid,
          recentlyPlayed: [],
          favourites: [],
        );

        //  add user to our database
        await _firestore
            .collection('users')
            .doc(cred.user!.uid)
            .set(user.toJson());
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'invalid-email') {
        res = '❗The email is badly formated...';
      } else if (err.code == 'weak-password') {
        res = 'Password should be 6 characters long...';
      }
    } catch (err) {
      res = res.toString();
    }
    return res;
  }

  // to login the user
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

  // signin with google
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

  // to logout the user
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
