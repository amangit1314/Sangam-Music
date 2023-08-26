import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../models/user_model.dart';

class AuthRepository {
  //* [DONE] FirebaseAuth instance
  firebase_auth.FirebaseAuth _firebaseAuth =
      firebase_auth.FirebaseAuth.instance;

  //* [DONE] constructor
  AuthRepository({
    firebase_auth.FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  //* [DONE] getter for having/getting access to change in auth state of user
  Stream<User> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final user = firebaseUser == null ? User.empty : firebaseUser.toUser;
      return user;
    });
  }

  //? [WAITING] register with credentials
  Future<void> register({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print(e);
    }
  }

  //? [WAITING] sign in with email and password credentials
  Future<void> loginWithCredentials({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print(e);
    }
  }

  //* [DONE] logout
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }

  // [For Later] sign in with number and otp credentials
  Future<void> loginWithOtp({
    required String number,
    required String otp,
  }) async {}
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
