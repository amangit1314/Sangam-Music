import 'package:flutter/material.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/Sangam.png'),
            width: 500,
            height: 500,
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 35),
          Container(
            width: MediaQuery.of(context).size.width / 1.4,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36),
              color: Color.fromRGBO(18, 22, 64, 1.0),
              border: Border.all(color: Colors.white),
            ),
            child: Column(
              children: [
                // TextFormField(
                //   onChanged: (text) {
                //     print('Username,$text');
                //   },
                //   controller: _usernameController,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
