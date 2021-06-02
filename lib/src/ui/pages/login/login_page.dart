import 'package:flutter/material.dart';
import 'package:sangam/src/ui/pages/login/components/body.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: LoginBody(),
    );
  }
}



/*
new InputDecoration(
                  border: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.teal),
                     borderRadius: BorderRadius.circular(36),
                  ),
                  prefixIcon: const Icon(Icons.person_outlined),
                  border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal),
                  ),
                hintText: 'Tell us about yourself',
                helperText: 'Keep it short, this is just a demo.',
                labelText: 'Life story',
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                prefixText: ' ',
                suffixText: 'USD',
                suffixStyle: const TextStyle(color: Colors.green),),
                ),
*/
