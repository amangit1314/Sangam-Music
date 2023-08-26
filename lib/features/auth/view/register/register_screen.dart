import 'package:flutter/material.dart';

import 'components/register_body.dart';

class RegisterScreen extends StatelessWidget {
  static String id = 'sign_up_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: RegisterBody(),
    );
  }
}
