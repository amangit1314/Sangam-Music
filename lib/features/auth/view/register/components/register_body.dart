import 'package:flutter/material.dart';
import 'registeration_form.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

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
              child: RegisterationForm(),
            ),
          ],
        ),
      ),
    );
  }
}
