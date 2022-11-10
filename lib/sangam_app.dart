// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sangam/features/auth/login/presentation/login_page.dart';
import 'package:sangam/features/nav/nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/onboard/presentation/onboard.dart';

class SangamApp extends StatefulWidget {
  SangamApp({Key? key}) : super(key: key);

  @override
  State<SangamApp> createState() => _SangamAppState();
}

class _SangamAppState extends State<SangamApp> {
  bool _isOnboarded = false;

  @override
  void initState() {
    super.initState();
    _isOnboarded = true;
  }

  autoLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? loggedIn = prefs.getBool('loggedin');

    if (loggedIn == true) {
      return NavPage();
    } else {
      return const LogInPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.poppinsTextTheme(),
        fontFamily: 'Comforta',
      ),
      home: _isOnboarded
          ? FutureBuilder(
              future: autoLogin(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  // Checking if the snapshot has any data or not
                  if (snapshot.hasData) {
                    // if snapshot has data which means user is logged in then we check the width of screen and accordingly display the screen layout
                    return NavPage();
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('${snapshot.error}'),
                    );
                  }
                }
                // means connection to future hasnt been made yet
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                return const LogInPage();
              },
            )
          : Onboard(),
    );
  }
}
