import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangam/src/views/pages/home/home_page.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color.fromRGBO(18, 22, 64, 1.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 300.0,
                width: MediaQuery.of(context).size.width / 1.4,
                child: Image.asset('assets/images/Sangam.png'),
              ),
              SizedBox(height: 48),
              TextField(
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(36.0),
                    ),
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                      color: Colors.white,
                    ),
                  ),
                  filled: true,
                  hintText: "Enter Email",
                  hintStyle: TextStyle(color: Colors.white10),
                  contentPadding: EdgeInsets.all(16.0),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(36.0),
                    ),
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                      color: Colors.white,
                    ),
                  ),
                  filled: true,
                  hintText: "Enter Email",
                  hintStyle: TextStyle(color: Colors.white10),
                  contentPadding: EdgeInsets.all(16.0),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Color.fromRGBO(18, 22, 64, 1.0),
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  child: MaterialButton(
                    onPressed: () {
                      Get.to(HomePage());
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
