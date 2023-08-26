import 'package:flutter/material.dart';

import 'core/config/size_configs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await checkWhereToNavigate();
    });
    super.initState();
  }

  Future<void> checkWhereToNavigate() async {
    // home: _isOnboarded
    //     ? StreamBuilder(
    //         stream: UserProvider().user,
    //         builder: (context, snapshot) {
    //           if (snapshot.connectionState == ConnectionState.active) {
    // Checking if the snapshot has any data or not
    //             if (snapshot.hasData) {
    //if snapshot has data which means user is logged in then we check the width of screen and accordingly display the screen layout
    //               return NavPage();
    //             } else if (snapshot.hasError) {
    //               return Center(
    //                 child: Text('${snapshot.error}'),
    //               );
    //             }
    //           }
    //           means connection to future hasnt been made yet
    //           if (snapshot.connectionState == ConnectionState.waiting) {
    //             return const Center(child: CircularProgressIndicator());
    //           }
    //           return const LogInPage();
    //         },
    //       )
    //     : Onboard(),
    // ),
    // home: Onboard()),
  }

  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: sizeConfig.blockSizeVertical! * 100,
            width: sizeConfig.blockSizeHorizontal! * 100,
            color: Colors.deepPurple.shade700,
          ),
          Center(
            child: SizedBox(
              height: sizeConfig.safeHeight! * 75,
              width: sizeConfig.safeWidth! * 75,
              child: Image(
                image: AssetImage('assets/images/Sangam.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
