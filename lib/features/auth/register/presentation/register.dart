import 'package:flutter/material.dart';
import 'package:sangam/features/auth/register/presentation/components/body.dart';

class SignUpPage extends StatefulWidget {
  static String id = 'sign_up_page';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: SignUpBody(),
    );
  }
}
