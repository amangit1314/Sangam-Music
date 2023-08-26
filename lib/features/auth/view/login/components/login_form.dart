import 'package:flutter/material.dart';

import '../../../../../core/widgets/content/text_field_input.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // bool _isLoading = false;
    return Padding(
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
            prefixIcon: Icons.fingerprint,
            iconColor: Colors.white,
            contentPadding: EdgeInsets.all(16.0),
            textEditingController: _passwordController,
            isPass: true,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.4,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36.0),
              border: Border.all(color: Colors.white),
              color: Color.fromRGBO(18, 22, 64, 1.0),
            ),
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
