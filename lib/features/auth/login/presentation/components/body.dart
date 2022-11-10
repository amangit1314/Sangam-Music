import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sangam/features/nav/nav_bar.dart';

import '../../../../../core/services/firebase/auth/auth_methods.dart';
import '../../../../../core/utils/widgets/content/text_field_input.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  //a Controller's for email & password
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (res == 'success') {
      // Navigator.of(context).pushAndRemoveUntil(
      //     MaterialPageRoute(builder: (context) => NavPage()), (route) => false);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return NavPage();
          },
        ),
      );
      setState(() {
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      GetSnackBar(
        title: 'Error',
        message: res,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: Container(
        width: double.infinity,
        height: double.maxFinite,
        decoration: BoxDecoration(color: Color.fromRGBO(18, 22, 64, 1.0)),
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/Sangam.png'),
                  width: 500,
                  height: 400,
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFieldInput(
                        hintText: "Email",
                        textInputType: TextInputType.emailAddress,
                        prefixIcon: Icons.email,
                        iconColor: Colors.white,
                        contentPadding: EdgeInsets.all(16.0),
                        textEditingController: _emailController,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 35),
                      TextFieldInput(
                        hintText: "Password",
                        textInputType: TextInputType.visiblePassword,
                        prefixIcon: Icons.password,
                        iconColor: Colors.white,
                        contentPadding: EdgeInsets.all(16.0),
                        textEditingController: _passwordController,
                        isPass: true,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36.0),
                    border: Border.all(color: Colors.white),
                    color: Color.fromRGBO(18, 22, 64, 1.0),
                  ),
                  child: MaterialButton(
                    onPressed: loginUser,
                    child: !_isLoading
                        ? const Text(
                            'Log in',
                            style: TextStyle(color: Colors.white),
                          )
                        : const CircularProgressIndicator(
                            color: Colors.yellow,
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.google),
                          onPressed: () {
                            AuthMethods().signInWithGoogle().then(
                              (result) {
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) => NavPage(),
                                  ),
                                  (route) => false,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
