// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sangam_music/features/auth/view/login/login_screen.dart';

import '../../auth/view/register/register_screen.dart';

class WelcomePage extends StatelessWidget {
  static String id = 'welcome_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(18, 22, 64, 1.0),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(18, 22, 64, 1.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/Sangam.png'),
                width: 500,
                height: 400,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 35),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.0),
                  border: Border.all(color: Colors.white),
                  color: const Color.fromRGBO(18, 22, 64, 1.0),
                ),
                child: MaterialButton(
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      fontFamily: 'Comforta',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LogInScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 35),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.0),
                  border: Border.all(color: Colors.white),
                  color: const Color.fromRGBO(18, 22, 64, 1.0),
                ),
                child: MaterialButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Comforta',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const RegisterScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
