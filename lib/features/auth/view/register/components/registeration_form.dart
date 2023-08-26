import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/services/firebase/auth/auth_methods.dart';
import '../../../../../core/widgets/content/text_field_input.dart';
import '../../../../nav/nav_bar.dart';

class RegisterationForm extends StatefulWidget {
  const RegisterationForm({super.key});

  @override
  State<RegisterationForm> createState() => _RegisterationFormState();
}

class _RegisterationFormState extends State<RegisterationForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void signUpUser() async {
    String res = await AuthMethods().signUpUser(
      email: _emailController.text,
      password: _passwordController.text,
      username: _userNameController.text,
    );

    if (res == "success") {
      setState(() {
        _isLoading = false;
      });

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => NavPage()),
      );
    } else {
      setState(() {
        _isLoading = true;
      });

      GetSnackBar(title: 'Error', message: res);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
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
            prefixIcon: Icons.fingerprint,
            iconColor: Colors.white,
            contentPadding: EdgeInsets.all(16.0),
            textEditingController: _passwordController,
            isPass: true,
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 35),
          Container(
            width: MediaQuery.of(context).size.width / 1.4,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36.0),
              border: Border.all(color: Colors.white),
              color: Color.fromRGBO(18, 22, 64, 1.0),
            ),
            child: MaterialButton(
              onPressed: () {
                _isLoading
                    ? Center(child: Text('Loading...'))
                    : Navigator.push(
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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
