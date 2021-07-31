import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangam/controllers/authController.dart';
import 'package:sangam/pages/auth/login/login_page.dart';

class SignUpPage extends GetWidget<AuthController> {
  static String id = "sign_up_screen";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

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
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 55),
                      CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage('assets/Sangam.png'),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "Registeration Portal",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comforta',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Register here please!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comforta',
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Full Name",
                          hintStyle: TextStyle(fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(12)),
                          ),
                          prefixIcon: Icon(
                            CupertinoIcons.profile_circled,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 0.4,
                          ),
                        ),
                      ),
                      SizedBox(height: 14),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Email ",
                          hintStyle: TextStyle(fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(12)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 0.4,
                          ),
                          prefixIcon: Icon(
                            (CupertinoIcons.mail),
                          ),
                        ),
                      ),
                      SizedBox(height: 14),
                      TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Password ",
                          hintStyle: TextStyle(fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(12)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 0.4,
                          ),
                          prefixIcon: const Icon(Icons.security_outlined),
                          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                        ),
                      ),
                      SizedBox(height: 14),
                      TextField(
                        obscureText: true,
                        controller: confirmpasswordController,
                        decoration: InputDecoration(
                          hintText: "Confirm Password ",
                          hintStyle: TextStyle(fontSize: 13),
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide:
                          //       BorderSide(color: Colors.blue, width: 2.0),
                          // ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(12)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 0.4,
                          ),
                          prefixIcon: Icon(Icons.verified_outlined),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 180),
                          TextButton(
                            onPressed: () {
                              Get.to(() => LoginPage());
                            },
                            child: Text(
                              "Log In Instead!",
                              style: TextStyle(
                                fontFamily: 'Comforta',
                                color: Colors.white,
                                fontSize: 13.0,
                              ),
                            ),
                          ),
                        ],
                      ),
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
