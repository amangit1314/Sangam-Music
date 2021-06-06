import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sangam/src/models/user.dart';

class Database {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> createNewUser(UserModel user) async {
    // try {
    //   await _firestore.collection("users").where(user.id).setData({
    //     "name": user.name,
    //     "email": user.email,
    //   });
    //   return true;
    // } catch (e) {
    //   print(e);
    //   return false;
    // }
  }

  // Future<UserModel> getUser(String uid) async {
  //   try {
  //     DocumentSnapshot _doc =
  //         await _firestore.collection("users").where(uid).getData();

  //     return UserModel.fromDocumentSnapshot(documentSnapshot: _doc);
  //   } catch (e) {
  //     print(e);
  //     rethrow;
  //   }
  // }
}
