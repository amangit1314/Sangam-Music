import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../core/widgets/content/text_field_input.dart';
import '../../../../nav/nav_bar.dart';
import '../../../logic/bloc/auth_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void loginUser(AuthBloc authBloc) async {
    authBloc.add(AuthLoginEvent(
      email: _emailController.text,
      password: _passwordController.text,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccessful) {
          // Navigate to the next page or perform other actions
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const NavPage();
              },
            ),
          );
        } else if (state is AuthError) {
          // Display an error message using GetSnackBar or other methods
          GetSnackBar(title: 'Error', message: state.error);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFieldInput(
                hintText: "Email",
                textInputType: TextInputType.emailAddress,
                prefixIcon: Icons.email,
                iconColor: Colors.white,
                contentPadding: const EdgeInsets.all(16.0),
                textEditingController: _emailController,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 35),
              TextFieldInput(
                hintText: "Password",
                textInputType: TextInputType.visiblePassword,
                prefixIcon: Icons.fingerprint,
                iconColor: Colors.white,
                contentPadding: const EdgeInsets.all(16.0),
                textEditingController: _passwordController,
                isPass: true,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.0),
                  border: Border.all(color: Colors.white),
                  color: const Color.fromRGBO(18, 22, 64, 1.0),
                ),
                child: MaterialButton(
                  onPressed: state is AuthLoading
                      ? null
                      : () {
                          if (state is! AuthLoading) {
                            loginUser(context.read<AuthBloc>());
                          }
                        },
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
