import 'dart:convert';

class User {
  final String uid;
  final String? userName;
  final String email;
  final String? password;
  final String? userImage;
  final List? playLists;
  final dynamic subscription;

  static User empty = const User(uid: '', email: '');

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;

  const User({
    this.userName,
    this.password,
    this.userImage,
    this.playLists,
    this.subscription,
    required this.uid,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'userName': userName,
      'email': email,
      'password': password,
      'userImage': userImage,
      'playLists': playLists?.toMap(),
      'subscription': subscription,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uid: map['uid'] ?? '',
      userName: map['userName'],
      email: map['email'] ?? '',
      password: map['password'],
      userImage: map['userImage'],
      playLists:
          map['playLists'] != null ? List.fromMap(map['playLists']) : null,
      subscription: map['subscription'] ?? null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
