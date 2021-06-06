import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangam/src/ui/pages/home/home_page.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  //? Controller's for username & password
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(_printLatestValue);
    _passwordController.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    print('Second text field: ${_usernameController.text}');
    print('Second text field: ${_passwordController.text}');
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
            children: <Widget>[
              SafeArea(
                child: Image(
                  image: AssetImage('assets/images/Sangam.png'),
                  height: 278,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              // SizedBox(  height: 24),
              SizedBox(height: MediaQuery.of(context).size.height / 35),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 45,
                child: TextFormField(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 35),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Color.fromRGBO(18, 22, 64, 1.0),
                  border: Border.all(color: Colors.white),
                ),
                child: TextFormField(
                  onChanged: (text) {
                    print('Password,$text');
                  },
                  controller: _usernameController,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 70),
              Text(
                'forgot password?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8.0,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 70),
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
                    Get.to(HomePage());
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
