import 'package:flutter/material.dart';

import 'social_card.dart';
import 'login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: Image(
              image: AssetImage('assets/images/Sangam.png'),
              width: 500,
              height: 400,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: LoginForm(),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16.0),
            sliver: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
