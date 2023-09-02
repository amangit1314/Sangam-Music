import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sangam_music/core/utils/theme/colors.dart';
import 'package:sangam_music/features/auth/logic/bloc/auth_bloc.dart';
import 'package:sangam_music/features/nav/nav_bar.dart';
import 'package:sangam_music/features/onboard/presentation/onboard.dart';

import 'core/config/size_configs.dart';
import 'core/helper/shared_preference_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
    startDelayedNavigation();
  }

  Future<void> startDelayedNavigation() async {
    await Future.delayed(const Duration(seconds: 5));
    await checkUserLoggedIn();
  }

  Future<bool> isUserLoggedIn() async {
    final accessToken = await SharedPrefrenceHelper().getAccessToken();
    log(accessToken.toString());
    return accessToken != null && accessToken.isNotEmpty && accessToken != '';
  }

  Future<void> checkUserLoggedIn() async {
    final isLoggedIn = await isUserLoggedIn();
    log("Is loggedIn: $isLoggedIn");
    await navigateToNextScreen();
  }

  Future<void> navigateToNextScreen() async {
    final accessToken = await SharedPrefrenceHelper().getAccessToken();
    if (!mounted) return;
    final authBloc = BlocProvider.of<AuthBloc>(context);
    accessToken != null && accessToken.isNotEmpty && accessToken != ''
        ? Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const NavPage()),
            (route) => false,
          )
        : authBloc.add(AuthLoggedOut());
  }

  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccessful) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const NavPage()),
            (route) => false,
          );
        } else {
          log(state.toString());
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const Onboard()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: SangamMusicDefaultColors.primaryColor,
        body: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/Sangam.png'),
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
