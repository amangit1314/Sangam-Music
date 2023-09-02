import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/theme/cubit/theme_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static String id = 'profile_page';

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = false;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // sized box height 10
            const SizedBox(height: 4),
            // row back ios icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                // ios switch button to toggle theme
                CupertinoSwitch(
                  value: isDarkMode,
                  onChanged: (value) {
                    isDarkMode = !isDarkMode;
                    context.read<ThemeCubit>().toggleTheme();
                  },
                ),
              ],
            ),
            // circle avatar profile image
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                'assets/images/img_10.jpg',
              ),
            ),
            //  username, email row
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Username: '),
                Text('username'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Email: '),
                Text('email@gmail.com'),
              ],
            ),
            //  row edit profile button
            const SizedBox(height: 10),
            //  text my orders
            Container(
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
              // decoration primary color radius 4
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text(
                'Edit Profile',

                // style color white bold 12
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
