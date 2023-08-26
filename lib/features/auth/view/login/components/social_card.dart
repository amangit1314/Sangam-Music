import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 20,
      child: Center(
        child: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.google,
            size: 20,
          ),
          onPressed: () {
            // AuthMethods().signInWithGoogle().then(
            //   (result) {
            //     Navigator.of(context).pushAndRemoveUntil(
            //       MaterialPageRoute(
            //         builder: (context) => NavPage(),
            //       ),
            //       (route) => false,
            //     );
            //   },
            // );
          },
        ),
      ),
    );
  }
}
