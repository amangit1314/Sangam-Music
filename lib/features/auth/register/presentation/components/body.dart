import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangam/features/nav/nav_bar.dart';

import '../../../../../core/services/firebase/auth/auth_methods.dart';
import '../../../../../core/utils/widgets/content/text_field_input.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
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

  void signUpUser() async {
    // set loading to true
    setState(() {
      _isLoading = true;
    });

    // signup user using our authmethodds
    String res = await AuthMethods().signUpUser(
      email: _emailController.text,
      password: _passwordController.text,
      username: _userNameController.text,
      // file: Image.memory(bytes).image,
    );
    // if string returned is sucess, user has been created
    if (res == "success") {
      setState(() {
        _isLoading = false;
      });
      // navigate to the home screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => NavPage()),
      );
    } else {
      setState(() {
        _isLoading = false;
      });
      // show the error
      GetSnackBar(title: 'Result', message: res);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color.fromRGBO(18, 22, 64, 1.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/Sangam.png'),
              width: 500,
              height: 400,
            ),
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
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36.0),
                border: Border.all(color: Colors.white),
                color: Color.fromRGBO(18, 22, 64, 1.0),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NavPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
