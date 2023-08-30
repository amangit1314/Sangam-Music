import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../../../../core/widgets/content/text_field_input.dart';
import '../../../../nav/nav_bar.dart';
import '../../../logic/bloc/auth_bloc.dart';

class RegisterationForm extends StatefulWidget {
  const RegisterationForm({super.key});

  @override
  State<RegisterationForm> createState() => _RegisterationFormState();
}

class _RegisterationFormState extends State<RegisterationForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void signUpUser(AuthBloc authBloc) async {
    authBloc.add(AuthRegisterEvent(
      email: _emailController.text,
      password: _passwordController.text,
      username: _userNameController.text,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Registered) {
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
        return Form(
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
              SizedBox(height: MediaQuery.of(context).size.height / 35),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 55,
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
                            signUpUser(context.read<AuthBloc>());
                          }
                        },
                  child: const Text(
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
      },
    );
  }
}
