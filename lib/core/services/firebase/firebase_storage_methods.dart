import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

// A class which contains firebase storage ethods
class StorageMethods {
  // Firebase storage instance
  final FirebaseStorage _storage = FirebaseStorage.instance;

  // Firebase auth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // adding file to firebase storage
  Future<String> uploadImageToStorage(
    String childName,
    Uint8List file,
    bool isPost,
  ) async {
    // getting the user id from the firebase auth
    Reference ref =
        _storage.ref().child(childName).child(_auth.currentUser!.uid);
    if (isPost) {
      // if the file is a post, we need to add a random id to it
      String id = const Uuid().v1();

      ref = ref.child(id);
    }
    // uploading the file to the firebase storage
    UploadTask uploadTask = ref.putData(file);
    // waiting for the upload to finish
    TaskSnapshot snap = await uploadTask;
    // getting the url of the uploaded file
    String downloadUrl = await snap.ref.getDownloadURL();
    // returning the download url
    return downloadUrl;
  }
}
