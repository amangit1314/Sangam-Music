import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  late String id;
  late String name;
  late String email;

  UserModel({required this.id, required this.name, required this.email});

  UserModel.fromDocumentSnapshot({DocumentSnapshot? documentSnapshot}) {
    id = documentSnapshot as String;
    name = documentSnapshot!["name"];
    email = documentSnapshot["email"];
  }
}