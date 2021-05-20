import 'package:flutter/material.dart';
import 'package:sangam/ui/pages/login_page.dart';
import 'package:sangam/ui/pages/register.dart';

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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Center(
                  child: Image(
                    image: AssetImage('assets/images/Sangam.png'),
                    width: 500,
                    height: 500,
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    elevation: 5.0,
                    color: Color.fromRGBO(18, 22, 64, 1.0),
                    borderRadius: BorderRadius.circular(36.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginPage.id);
                      },
                      child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontFamily: 'Comforta', color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    elevation: 5.0,
                    color: Color.fromRGBO(18, 22, 64, 1.0),
                    borderRadius: BorderRadius.circular(36.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpPage.id);
                      },
                      minWidth: 313.0,
                      height: 55.0,
                      child: Center(
                        child: Text(
                          'Sign Up',
                        ),
                      ),
                      textColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
