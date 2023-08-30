import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/utils/locator.dart';
import 'firebase_options.dart';
import 'sangam_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupDependency();

  runApp(const SangamApp());
}
