import 'package:flutter/material.dart';
import 'package:sangam_music/features/home/presentation/components/body.dart';

class HomePage extends StatelessWidget {
  static String id = 'home_page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).canvasColor,
      body: const SafeArea(
        child: HomeBody(),
      ),
    );
  }
}
