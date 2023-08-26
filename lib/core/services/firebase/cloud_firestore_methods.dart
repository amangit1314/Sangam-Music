import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

// A class which contains several firestore methods
class FirestoreMethods {
  // Firebase firestore instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // a method to create a post
  Future<String> uploadPost(String description, Uint8List file, String uid,
      String username, String profImage) async {
    // asking uid here because we dont want to make extra calls to firebase auth when we can just get from our state management
    String res = "Some error occurred";
    // using try and catch block to handle different errors
    try {
      // geting photo url from the firebase storage
      // String photoUrl =
      //     await StorageMethods().uploadImageToStorage('posts', file, true);
      // creates unique id based on time
      // String postId = const Uuid().v1();
      // creating an object of Post and specifing its required parametric fields
      // Post post = Post(
      //   description: description,
      //   uid: uid,
      //   username: username,
      //   likes: [],
      //   postId: postId,
      //   datePublished: DateTime.now(),
      //   postUrl: photoUrl,
      //   profileImage: profImage,
      // );
      // setting the data in the firebase collection posts
      //_firestore.collection('posts').doc(postId).set(post.toJson());
      res = "success";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // a method for implemeting (like a song) feature
  Future<String> likePost(String songId, String uid, List likes) async {
    String res = "Some error occurred";
    // using try and catch block to handle all cases and errors
    try {
      if (likes.contains(uid)) {
        // if the likes list contains the user uid, we need to remove it
        _firestore.collection('songs').doc(songId).update({
          'likes': FieldValue.arrayRemove([uid])
        });
      } else {
        // else we need to add uid to the likes array
        _firestore.collection('songs').doc(songId).update({
          'likes': FieldValue.arrayUnion([uid])
        });
      }
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // a method for implemeting (post a post) feature
  Future<String> postComment(String postId, String text, String uid,
      String name, String profilePic) async {
    String res = "Some error occurred";
    // using try and catch block to handle all cases and errors
    try {
      if (text.isNotEmpty) {
        // if the likes list contains the user uid, we need to remove it
        String commentId = const Uuid().v1();
        // setting the data in the firebase collection posts to its comments
        _firestore
            .collection('posts')
            .doc(postId)
            .collection('comments')
            .doc(commentId)
            .set({
          'profilePic': profilePic,
          'name': name,
          'uid': uid,
          'text': text,
          'commentId': commentId,
          'datePublished': DateTime.now(),
        });
        res = 'success';
      } else {
        res = "Please enter text";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // Delete Post
  Future<String> deletePost(String postId) async {
    String res = "Some error occurred";
    try {
      await _firestore.collection('posts').doc(postId).delete();
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
