import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  late String uid;
  late String name;
  late String email;

  UserModel({required this.uid, required this.name, required this.email});

  UserModel.fromDocumentSnapshot({DocumentSnapshot? documentSnapshot}) {
    uid = documentSnapshot as String;
    name = documentSnapshot!["name"];
    email = documentSnapshot["email"];
  }
}