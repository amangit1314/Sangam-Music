import 'package:flutter/material.dart';

import 'components/login_body.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: LoginBody(),
    );
  }
}
