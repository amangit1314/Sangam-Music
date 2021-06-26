import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangam/controllers/authController.dart';

class LoginBody extends GetWidget<AuthController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: <Widget>[
              Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 300.0,
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: Image.asset('assets/Sangam.png'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(12.0),
                            ),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.none,
                              color: Colors.white,
                            ),
                          ),
                          filled: true,
                          hintText: "email",
                          hintStyle:
                              TextStyle(color: Colors.pink, fontSize: 13),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.pink,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 0.5,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(13.0),
                            ),
                            borderSide: BorderSide(
                              width: 1,
                              style: BorderStyle.none,
                              color: Colors.pink,
                            ),
                          ),
                          
                          filled: true,
                          hintText: "password",
                          hintStyle:
                              TextStyle(color: Colors.pink, fontSize: 13),
                          prefixIcon: Icon(
                            Icons.security_outlined,
                            color: Colors.pink,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 0.5,
                          ),
                        ),
                      ),
                      SizedBox(height: 36),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.6,
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
                              fontSize: 13.0,
                            ),
                          ),
                          onPressed: () {
                            controller.createUser(
                                emailController.text, passwordController.text);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
