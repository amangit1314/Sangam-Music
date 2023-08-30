import 'dart:convert';

import 'package:sangam_music/models/playlist_model.dart';
import 'package:sangam_music/models/subscription_model.dart';
import 'package:sangam_music/models/track_model.dart';

class User {
  final String uid;
  final String email;
  final String? userName;
  final String? password;
  final String? userImage;
  final List<PlayList>? playLists;
  final List<Track>? recentlyPlayed;
  final List<String>? followers;
  final List<String>? following;
  final Subscription? subscription;

  static User empty = const User(uid: '', email: '');

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;

  const User({
    this.userName,
    this.password,
    this.userImage,
    this.playLists,
    this.followers,
    this.following,
    this.subscription,
    this.recentlyPlayed,
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
      'playLists': playLists,
      'recentlyPlayed': recentlyPlayed,
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
      playLists: map['playLists'] ?? [],
      recentlyPlayed: map['recentlyPlayed'] ?? [],
      subscription: map['subscription'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
