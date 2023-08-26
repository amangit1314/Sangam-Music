import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sangam/core/utils/locator.dart';
import 'package:sangam/sangam_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await Firebase.initializeApp(
  //   name: 'sangam',
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  setupDependency();

  runApp(SangamApp());
}
