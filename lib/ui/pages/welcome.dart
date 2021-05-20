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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/Sangam.png'),
                  width: 500,
                  height: 500,
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              // child: Material(
              //   elevation: 5.0,
              //   color: Color.fromRGBO(18, 22, 64, 1.0),
              //   borderRadius: BorderRadius.circular(36.0),
              //   child: MaterialButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, LoginPage.id);
              //     },
              //     minWidth: 200.0,
              //     height: 42.0,
              //     child: Text(
              //       'Log In',
              //     ),
              //     textColor: Colors.white,
              //   ),
              // ),
              child: ElevatedButton(
                onPressed: () {
                  LoginPage();
                },
                child: Text('Log In'),
                style: ButtonStyle(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              // child: Material(
              //   elevation: 5.0,
              //   color: Color.fromRGBO(18, 22, 64, 1.0),
              //   borderRadius: BorderRadius.circular(36.0),
              //   child: MaterialButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, SignUpPage.id);
              //     },

              //     minWidth: 200.0,
              //     height: 42.0,
              //     child: Text(
              //       'Sign Up',
              //     ),
              //     textColor: Colors.white,
              //   ),
              // ),
              child: ElevatedButton(
                child: Text('Sign Up'),
                onPressed: () {
                  SignUpPage();
                },
                style: ButtonStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
