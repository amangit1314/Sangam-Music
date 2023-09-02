import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sangam_music/core/utils/theme/colors.dart';
import '../../../../../core/widgets/content/text_field_input.dart';
import '../../../../nav/nav_bar.dart';
import '../../../logic/bloc/auth_bloc.dart';
import '../../register/register_screen.dart';
import 'social_card.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isPasswordVisible = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void loginUser(AuthBloc authBloc) async {
    authBloc.add(
      AuthLoginEvent(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccessful) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const NavPage();
              },
            ),
          );
        } else if (state is AuthError) {
          GetSnackBar(title: 'Error', message: state.error);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
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
                isPass: isPasswordVisible ? false : true,
                sufixIcon:
                    isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                onPressed: () =>
                    setState(() => isPasswordVisible = !isPasswordVisible),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 35),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.white),
                  color: const Color.fromARGB(255, 77, 226, 246),
                  // color: const Color.fromRGBO(18, 22, 64, 1.0),
                ),
                child: MaterialButton(
                  onPressed: () {
                    if (state is! AuthLoading) {
                      loginUser(context.read<AuthBloc>());
                    }
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: SangamMusicDefaultColors.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 65),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'forgot password?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 77, 226, 246),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      ' Register!',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 77, 226, 246),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
