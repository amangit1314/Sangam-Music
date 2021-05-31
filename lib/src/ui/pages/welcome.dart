import 'package:flutter/material.dart';
import 'package:sangam/src/ui/pages/home/home_page.dart';
import 'package:sangam/src/ui/pages/login_page.dart';
import 'package:sangam/src/ui/pages/register.dart';

class WelcomePage extends StatefulWidget {
  static String id = 'welcome_page';
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(18, 22, 64, 1.0),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/Sangam.png'),
                width: 500,
                height: 400,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 35),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.0),
                  border: Border.all(color: Colors.white),
                  color: Color.fromRGBO(18, 22, 64, 1.0),
                ),
                child: MaterialButton(
                  child: Text(
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
                          return LoginPage();
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 35),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.0),
                  border: Border.all(color: Colors.white),
                  color: Color.fromRGBO(18, 22, 64, 1.0),
                ),
                child: MaterialButton(
                  child: Text(
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
                          return HomePage();
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
